typedef struct {
	unsigned int x:16;
	unsigned int y:17;
	unsigned short z0; /* -Wpadded 1 */
} XXX; /* -Wpadded 2 */

typedef struct __attribute__((packed,aligned(4))) {
    unsigned int x:16;
    unsigned int y:17;
    unsigned short z1; /* -Wpadded 3 */
} XXY; /* -Wpadded 4 */

typedef struct {
	unsigned int x:1;
	unsigned int y:1;
	unsigned short z2; /* -Wpadded 5 */
} XYX; /* silent, good */

typedef struct {
	unsigned int x:16;
	unsigned int y:16;
	unsigned short z3; /* silent, good */
} XYY; /* -Wpadded 6 */
