#include <sys/time.h>
#include <iostream>
using namespace std;
double second() {
    double t;
    struct timeval tv;
    gettimeofday(&tv,NULL);
    t = (double)(tv.tv_sec) + ((double)(tv.tv_usec))/1.0e6;
    return t;
}

static double start_time;

double start_timer() {
    start_time = second();
    return start_time;
}

double lap_time(char *msg) {
    double t, lap_t;
    t = second();
    lap_t = t - start_time;
    cout << msg << ":" << (double)lap_t;
    count << endl;
    return lap_t;
}
