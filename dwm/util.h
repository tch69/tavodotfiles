/* See LICENSE file for copyright and license details. */

#ifndef MAX
#define MAX(A, B)               ((A) > (B) ? (A) : (B))
#endif /* MAX */
#ifndef MIN
#define MIN(A, B)               ((A) < (B) ? (A) : (B))
#endif /* MIN */
#define BETWEEN(X, A, B)        ((A) <= (X) && (X) <= (B))
#define LENGTH(X)               (sizeof (X) / sizeof (X)[0])

void die(const char *fmt, ...);
void *ecalloc(size_t nmemb, size_t size);
