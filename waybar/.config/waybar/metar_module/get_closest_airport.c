#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <unistd.h>

#define BUFFER_SZ 256
#define ABS(x) ((x < 0 ? -(x) : (x)))

struct linedata {
	char *country_code;
	char *state;
	char *icao;
	double latitude;
	double longitude;
};

struct file_coords {
	double latitude;
	double longitude;
};

static FILE *open_csv(char *path) {
	FILE *fptr = fopen(path, "r"); 
	if (fptr == NULL) {
		puts("Unable to open file");
		exit(1);
	} else {
		return fptr;
	}
}

static void get_file_coords(struct file_coords *fc, char *str) {
	for (int i = 0; i < 3; i++) {
		strsep(&str, ",");
	}
	char *tmp;
	tmp = strsep(&str, ",");
	if (tmp != NULL) {
		fc->latitude = atof(tmp);
	}
	tmp = strsep(&str, ",");
	if (tmp != NULL) {
		fc->longitude = atof(tmp);
	}
}

static double get_coord_difference(double user_lt, double user_lg, double lt, double lg) {
	double tmplong = ABS(ABS(user_lg) - ABS(lg));
	double tmplat = ABS(ABS(user_lt) - ABS(lt));
	return tmplong + tmplat;
}

static long find_closest_coords(double latitude, double longitude, char *path) {
	FILE *fptr = open_csv(path);
	double distance = LONG_MAX;
	double tmp_dist = LONG_MAX;
	long retval = 0;
	long tmpfpi;
	char *str;
	char buff[BUFFER_SZ];
	struct file_coords _fc, *fc = &_fc;

	long linenumber = 0;

	while ((str = fgets(buff, sizeof(buff), fptr)) != NULL) {
		get_file_coords(fc, str);
		tmp_dist = get_coord_difference(latitude, longitude, fc->latitude, fc->longitude);
		if (tmp_dist < distance) {
			distance = tmp_dist;
			retval = tmpfpi;
		}
		tmpfpi = ftell(fptr);
	}

	fclose(fptr);
	return retval;
}

/* 
 * argv[1] format = "[LAT],[LONG]"
 * argv[2] format = "/home/user/.config/waybar/metar_module" 
 */
int main(int argc, char **argv) {
	if (argc < 3) {
		printf("%s\n", "Usage: get_closest_airport.c [LAT,LONG] [ABSOLUTE PATH]");
		return 1;
	}

	double latitude = atof(strsep(&argv[1], ","));
	double longitude = atof(strsep(&argv[1], ","));

	char *abspath = malloc(strlen(argv[2]) + strlen("/iata-icao.csv") + 1);
	if (abspath == NULL) {
		printf("%s\n", "Failed to allocate memory");
		exit(1);
	}
	strcat(abspath, argv[2]);
	strcat(abspath, "/iata-icao.csv");

	long fpi = find_closest_coords(latitude, longitude, abspath);

	FILE *fptr = open_csv(abspath);
	char *str;
	char buff[BUFFER_SZ];
	int retval = fseek(fptr, fpi, SEEK_SET);
	str = fgets(buff, sizeof(buff), fptr);
	fclose(fptr);
	strsep(&str, ",");
	strsep(&str, ",");
	printf("%s", strsep(&str, ","));

	free(abspath);

	return 0;
}
