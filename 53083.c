#include <stdio.h>
#include <stdlib.h>

struct point {
    int x, y;
};

struct span {
    short lx, lw, rx, rw;
};

struct span spans[9] = {
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
{1, 1, 1, 1},
};

const int span_count = sizeof(spans)/sizeof(spans[0]);

void
test_output(int n, struct point *ppt, int *pwidth)
{
    fprintf(stderr, "test_spans(nspans=%d)\n", n);
    for (int i = 0;i < n;i++) {
        fprintf(stderr, "\t%d,%d + %d\n", (int)ppt[i].x, (int)ppt[i].y, (int)pwidth[i]);
        if (pwidth[i] <= 0)
            abort();
    }
}

void
process_spans(void)
{
    struct point *points;
    struct point *pts;
    int *widths;
    int *wids;
    struct span *span;
    int xorg, yorgu, yorgl;
    int n;
	
    n = sizeof(int) * span_count * 4;
    widths = malloc(n + (sizeof(struct point) * span_count * 4));
    if (!widths)
        return;
    points = (struct point *) ((char *) widths + n);
	
    pts = points;
    wids = widths;
    span = spans;
    xorg = 100;
    yorgu = 100;
    yorgl = 100;
	
    for (n = span_count; --n >= 0;) {
        pts[0].x = xorg + span->lx;
        pts[0].y = yorgu;
        wids[0] = span->lw;
        pts[1].x = xorg + span->rx;
        pts[1].y = pts[0].y;
        wids[1] = span->rw;
        pts[2].x = pts[0].x;
        pts[2].y = yorgl;
        wids[2] = wids[0];
        pts[3].x = pts[1].x;
        pts[3].y = pts[2].y;
        wids[3] = wids[1];
        yorgu++;
        yorgl--;
        pts += 4;
        wids += 4;
        span++;
    }
	
    test_output(pts - points, points, widths);
	
    free(widths);
}

int main(int argc, char **argv)
{
    process_spans();
	
    return 0;
}
