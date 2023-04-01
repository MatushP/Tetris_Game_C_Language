# 1 "main.c" 1
# 1 "C:/c68/include/osbind.h" 1
# 1 "C:/c68/include/compiler.h" 1
# 9 "C:/c68/include/osbind.h" 2
# 1 "C:/c68/include/ostruct.h" 1
# 22 "C:/c68/include/ostruct.h"
typedef struct {
    long b_free;
    long b_total;
    long b_secsiz;
    long b_clsiz;
} _DISKINFO;


typedef struct {
  short time;
  short date;
} _DOSTIME;


typedef struct
{
        unsigned char maxlen;
        unsigned char actuallen;
        char    buffer[255];
} _CCONLINE;
# 48 "C:/c68/include/ostruct.h"
typedef struct _dta {
    char 	    dta_buf[21];
    char            dta_attribute;
    unsigned short  dta_time;
    unsigned short  dta_date;
    long            dta_size;
    char            dta_name[14];
} _DTA;
# 98 "C:/c68/include/ostruct.h"
typedef struct {
  short recsiz;
  short clsiz;
  short clsizb;
  short rdlen;
  short fsiz;
  short fatrec;
  short datrec;
  short numcl;
  short bflags;
} _BPB;




typedef struct _md {
    struct _md	*md_next;
    long	 md_start;
    long	 md_length;
    long	 md_owner;
} _MD;


typedef struct {
    _MD *mp_free;
    _MD *mp_used;
    _MD *mp_rover;
} _MPB;
# 141 "C:/c68/include/ostruct.h"
typedef struct {
    char    *ibuf;
    short   ibufsiz;
    volatile short   ibufhd;
    volatile short   ibuftl;
    short   ibuflow;
    short   ibufhi;
} _IOREC;


typedef struct {
	char	topmode;
	char	buttons;
	char	xparam;
	char	yparam;
	short	xmax;
	short	ymax;
	short	xstart;
	short	ystart;
} _PARAM;


typedef struct {
    void    (*midivec)	(void) ;
    void    (*vkbderr)	(void) ;
    void    (*vmiderr)	(void) ;
    void    (*statvec)	(void *) ;
    void    (*mousevec)	(void *) ;
    void    (*clockvec)	(void *) ;
    void    (*joyvec)	(void *) ;
    long    (*midisys)	(void) ;
    long    (*ikbdsys)	(void) ;
    char    kbstate;
} _KBDVECS;


typedef struct {
    void *unshift;
    void *shift;
    void *caps;
} _KEYTAB;


typedef struct
{
        void    *pb_scrptr;
        int     pb_offset;
        int     pb_width;
        int     pb_height;
        int     pb_left;
        int     pb_right;
        int     pb_screz;
        int     pb_prrez;
        void    *pb_colptr;
        int     pb_prtype;
        int     pb_prport;
        void    *pb_mask;
} _PBDEF;
# 17 "C:/c68/include/osbind.h" 2
# 33 "C:/c68/include/osbind.h"
 long _trap_1_w		(short) ;
 long _trap_1_ww	(short,short) ;
 long _trap_1_wl	(short,long) ;
 long _trap_1_wlw	(short,long,short) ;
 long _trap_1_wwll	(short,short,long,long) ;
 long _trap_1_wlww	(short,long,short,short) ;
 long _trap_1_www	(short,short,short) ;
 long _trap_1_wll	(short,long,long) ;
 long _trap_1_wwlll	(short,short,long,long,long) ;
 long _trap_1_wwwll	(short,short,short,long,long) ;
 long _trap_13_wl	(short,long) ;
 long _trap_13_w	(short) ;
 long _trap_13_ww	(short,short) ;
 long _trap_13_www	(short,short,short) ;
 long _trap_13_wwlwww	(short,short,long,short,short,short) ;
 long _trap_13_wwl	(short,short,long) ;
 long _trap_14_wwl	(short,short,long) ;
 long _trap_14_wwll	(short,short,long,long) ;
 long _trap_14_ww	(short,short) ;
 long _trap_14_w	(short) ;
 long _trap_14_wllw	(short,long,long,short) ;
 long _trap_14_wl	(short,long) ;
 long _trap_14_www	(short,short,short) ;
 long _trap_14_wllwwwww (short,long,long,short,short,short,short,short) ;
 long _trap_14_wllwwwwlw (short,long,long,short,short,short,short,long,short) ;
 long _trap_14_wllwwwwwlw (short,long,long,short,short,short,short,short,long,short) ;
 long _trap_14_wwwwwww	(short,short,short,short,short,short,short) ;
 long _trap_14_wlll	(short,long,long,long) ;
 long _trap_14_wllww	(short,long,long,short,short) ;
 long _trap_14_wwwwl	(short,short,short,short,long) ;
 long _trap_14_wwwl	(short,short,short,long) ;
 long _trap_14_wlwlw	(short,long,short,long,short) ;
# 103 "C:/c68/include/osbind.h"
 long _trap_1_ 	(short,...) ;
 long _trap_14_ 	(short,...) ;
 long _trap_13_ 	(short,...) ;
# 38 "main.c" 2
# 1 "C:/c68/include/stdio.h" 1
# 20 "C:/c68/include/stdio.h"
typedef unsigned long  size_t;
# 69 "C:/c68/include/stdio.h"
typedef	struct
	{
	long		_cnt;
	unsigned char	*_ptr;
	unsigned char	*_base;
	unsigned int	_flag;
	int		_file;
	long		_bsiz;
	unsigned char	_ch;
	}
	FILE;


typedef unsigned long fpos_t;
# 92 "C:/c68/include/stdio.h"
extern	FILE	_iob[];
# 108 "C:/c68/include/stdio.h"
 char *	ctermid	(char *) ;




 int	remove	(const char *) ;
 int	rename	(const char *, const char *) ;
 char *	tmpnam	(char *) ;
 FILE *	tmpfile	(void) ;

 int	fclose	(FILE *) ;
 int	fflush	(FILE *) ;

 FILE *	fopen	(const char *, const char *) ;
 FILE *	freopen	(const char *, const char *, FILE *) ;

 void	setbuf	(FILE *, char *) ;
 int	setvbuf	(FILE *, char *, int, size_t) ;
# 132 "C:/c68/include/stdio.h"
 int  fscanf  (FILE *, const char *, ...) ;
 int  scanf   (const char *, ...) ;
 int  sscanf  (const char *, const char *, ...) ;


 int	fprintf	(FILE *, const char *, ...) ;
 int	printf	(const char *, ...) ;
 int	sprintf	(char *, const char *, ...) ;

 int 	vfprintf (FILE *, const char *, char * ) ;
 int 	vprintf	 (const char *, char * ) ;
 int 	vsprintf (char *, const char *, char * ) ;

 int	vscanf  (const char *, char * ) ;
 int	vfscanf (FILE *, const char *, char * ) ;
 int	vsscanf	(const char *, const char *, char * ) ;


 int	fgetc	(FILE *) ;
 char	*fgets	(char *, int, FILE *) ;
 char	*gets	(char *) ;
 int	fputc	(int c, FILE *) ;
 int	fputs	(const char *, FILE *) ;
 int	puts	(const char *) ;

 size_t	fread	(void *, size_t, size_t, FILE *) ;
 size_t	fwrite	(const void *, size_t, size_t, FILE *) ;

 int	fgetpos	(FILE *, fpos_t *) ;
 int	fsetpos	(FILE *, fpos_t *) ;

 int	fseek	(FILE *, long, int) ;
 long	ftell	(FILE *) ;
 void	rewind	(FILE *) ;

 void	perror	(const char *) ;


 FILE	*fdopen	(int, const char *) ;


 FILE *	fopenp	(const char *, const char *) ;
 int 	fungetc	(int, FILE *) ;
 int	pclose	(FILE *) ;
 FILE *	popen	(const char *, const char *) ;
 void	setlinebuf	(FILE *) ;

 void	_binmode	(int) ;
 long 	getl	(FILE *) ;
 long 	putl	(long, FILE *) ;
 short 	getw	(FILE *) ;
 short 	putw	(short, FILE *) ;
 void	_getbuf	(FILE *fp) ;
# 192 "C:/c68/include/stdio.h"
 int	_filbuf	(FILE *) ;
# 39 "main.c" 2
# 1 "C:/c68/include/stdlib.h" 1
# 23 "C:/c68/include/stdlib.h"
typedef char  wchar_t;
# 44 "C:/c68/include/stdlib.h"
typedef struct {
    int		quot;
    int		rem;
} div_t;

typedef struct {
    long	quot;
    long	rem;
} ldiv_t;

 double atof (const char *s) ;
 int atoi (const char *str) ;
 long atol (const char *str) ;
 long int strtol (const char *nptr, char **endptr, int base) ;
 unsigned long int strtoul (const char *nptr, char **endptr, int base) ;
 double strtod (const char *s, char **endptr) ;

 void srand (unsigned int seed) ;
 int rand (void) ;

 void *malloc (size_t n) ;
 void free (void *param) ;
 void *realloc (void *_r, size_t n) ;
 void *calloc (size_t n, size_t sz) ;





 void *alloca (size_t) ;
# 89 "C:/c68/include/stdlib.h"
 void  abort (void) ;


 int atexit (void (*)(void)) ;

 void  exit (int) ;

 char *getenv (const char *tag) ;
 int system (const char *s) ;

 void *bsearch (const void *key, const void *base, size_t num, size_t size, int (*cmp )(const void *, const void *)) ;
 void qsort (void *base, size_t total_elems, size_t size, int (*cmp )(const void *, const void *)) ;

 int abs (int x) ;
 long labs (long x) ;

 div_t div (int num, int denom) ;
 ldiv_t ldiv (long num, long denom) ;

 int mblen (const char *, size_t) ;
 size_t mbstowcs (wchar_t *, const char *, size_t) ;
 int mbtowc (wchar_t *, const char *, size_t) ;
 size_t wcstombs (char *, const wchar_t *, size_t) ;
 int wctomb (char *, wchar_t) ;

 wchar_t *wcscat (wchar_t *, const wchar_t *) ;
 int wcscmp (const wchar_t *, const wchar_t *) ;
 wchar_t *wcscpy (wchar_t *, const wchar_t *) ;
 size_t wcslen (const wchar_t *) ;
 wchar_t *wcsncat (wchar_t *, const wchar_t *, size_t) ;
 int wcsncmp (const wchar_t *, const wchar_t *, size_t) ;
 wchar_t *wcsncpy (wchar_t *, const wchar_t *, size_t) ;
# 40 "main.c" 2
# 1 "C:/c68/include/unistd.h" 1
# 79 "C:/c68/include/unistd.h"
 int		lockf	(int, int, long) ;



 void  _exit	(int) ;
 int	access	(const char *, int) ;
 unsigned alarm	(unsigned) ;
 int	chdir	(const char *) ;
 int	chown	(const char *, int, int) ;
 int	close	(int) ;
 int	dup	(int) ;
 int	dup2	(int, int) ;
 int	execl	(const char *, ...) ;
 int	execle	(const char *, ...) ;
 int	execlp	(const char *, ...) ;
 int	execv	(const char *, char *const *) ;
 int	execve	(const char *, char *const *, char *const *) ;
 int	execvp	(const char *, char *const *) ;
 int	fork	(void) ;
 char *	getcwd	(char *, int) ;
 unsigned short 	getegid	(void) ;
 unsigned short 	geteuid	(void) ;
 unsigned short 	getgid	(void) ;
 int	getgroups (int, unsigned short  *) ;
 char *	getlogin (void) ;
 int	getpid	(void) ;
 int	getppid	(void) ;
 unsigned short 	getuid	(void) ;
 int	isatty	(int) ;
 int	link	(const char *oldname, const char *newname) ;
 long	lseek	(int, long, int) ;
 int	pause	(void) ;
 int	pipe	(int *) ;
 long	pathconf (const char *, int) ;
 int	rmdir	(const char *) ;
 int	read	(int, void *, unsigned) ;
 int	setgid	(int) ;
 int	setuid	(int) ;
 unsigned sleep	(unsigned int) ;
 long	sysconf	(int) ;
 char *	ttyname	(int) ;
 int	unlink	(const char *) ;
 int	write	(int, const void *, unsigned) ;


 int	_bsd_getpgrp (int) ;
 int	_bsd_setpgrp (int, int) ;
 char *	getwd	(char *) ;
 int	getopt	(int, char * const *, const char *) ;
 int	getpagesize (void) ;
 char *	getpass	(const char *prompt) ;
 char *	initstate (unsigned int seed, char *arg_state, int n) ;


 char *	mktemp	(char *) ;

 void	psignal	(int, const char *) ;
 long 	random	(void) ;
 long	_read	(int, void *, unsigned long) ;
 int	readlink (char *filename, char *linkto, int siz) ;
 void *	sbrk	(unsigned long ) ;
 void *	_sbrk	(long) ;
 int	setegid	(int) ;
 int	seteuid	(int) ;
 int	setregid (int, int) ;
 int	setreuid (int, int) ;
 char *	setstate (char *arg_state) ;
 void	sigpause (long mask) ;
 void	srandom	(unsigned int seed) ;
 int	stime	(long *) ;
 int	symlink (const char *oldname, const char *newname) ;
 long	tell	(int) ;
 void	usleep	(unsigned long) ;
 int	vfork	(void) ;
 long	_write	(int, const void *, unsigned long) ;
# 170 "C:/c68/include/unistd.h"
 int 	getpgrp	(void) ;

 int	setpgrp	(void) ;


 int	setpgid (int , int ) ;
 int	setsid (void) ;
 int 	tcgetpgrp	(int fd) ;
 int	tcsetpgrp	(int fd, int  pgrp) ;
# 41 "main.c" 2
# 1 "C:/c68/include/time.h" 1
# 26 "C:/c68/include/time.h"
typedef long 		time_t;
# 34 "C:/c68/include/time.h"
typedef unsigned long	clock_t;

struct tm
{
	int	tm_sec;
	int	tm_min;
	int	tm_hour;
	int	tm_mday;
	int	tm_mon;
	int	tm_year;
	int	tm_wday;
	int	tm_yday;
	int	tm_isdst;
};



struct timeval {
	long	tv_sec;
	long	tv_usec;
};

struct timezone {
	int	tz_minuteswest;
	int	tz_dsttime;
};


 clock_t	clock	 (void) ;
 double		difftime (time_t, time_t) ;
 time_t		mktime	 (const struct tm *) ;
 time_t		time	 (time_t *) ;
 char * 	asctime	 (const struct tm *) ;
 char *		ctime	 (const time_t *) ;
 struct tm *	gmtime   (const time_t *) ;
 struct tm *	localtime (const time_t *) ;
 unsigned long  strftime (	char *s, size_t maxsize, const char *format, const struct tm *timeptr) ;



 void		tzset	(void) ;


 clock_t	_clock	 (void) ;
 int	gettimeofday (struct timeval *, struct timezone *) ;
 int	settimeofday (struct timeval *, struct timezone *) ;



typedef unsigned long  fd_set;


 int	select	(int, fd_set *, fd_set *, fd_set *,					struct timeval *) ;
# 42 "main.c" 2
# 1 "./types.h" 1
# 52 "./types.h"
typedef unsigned char UINT8;
typedef unsigned int UINT16;
typedef unsigned long UINT32;
# 43 "main.c" 2
# 1 "./main.h" 1
# 1 "C:/c68/include/osbind.h" 1
# 4 "./main.h" 2
# 1 "C:/c68/include/stdio.h" 1
# 5 "./main.h" 2
# 1 "./types.h" 1
# 6 "./main.h" 2
# 44 "main.c" 2
# 1 "./blocks.h" 1
# 1 "./types.h" 1
# 21 "./blocks.h" 2
# 36 "./blocks.h"
void write_block(UINT16 *base);
void clear_block(UINT16 *base);





void get_tetra_bitmap(UINT16 tetra_bitmap[][4], int type);





void copy_matrix(UINT16 src[][4], UINT16 dst[][4]);
# 61 "./blocks.h"
void rotate_matrix(UINT16 src[][4], UINT16 dst[][4]);





void rotate(UINT16 *curr, UINT16 tetra_bitmap[][4], int x, int y, int PlacedBlocks[20][10]);
# 45 "main.c" 2
# 1 "./fonts.h" 1
# 1 "./types.h" 1
# 21 "./fonts.h" 2
# 34 "./fonts.h"
UINT32* getCharBitmap(char selection);
# 46 "main.c" 2
# 1 "./input.h" 1
# 1 "./types.h" 1
# 13 "./input.h" 2
# 19 "./input.h"
int check_keys();
# 26 "./input.h"
int read_key();
# 47 "main.c" 2
# 1 "./buffer.h" 1
# 1 "./types.h" 1
# 13 "./buffer.h" 2
# 19 "./buffer.h"
UINT16 *load_buffer();
# 48 "main.c" 2
# 1 "./events.h" 1
# 1 "./types.h" 1
# 13 "./events.h" 2
# 21 "./events.h"
int check_left_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);
# 30 "./events.h"
int check_right_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);
# 39 "./events.h"
int check_lower_bounds(UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10]);
# 46 "./events.h"
void update_PlacedBlocks(int PlacedBlocks[20][10], int x, int y, UINT16 tetra_bitmap[][4]);
# 53 "./events.h"
int check_complete_rows(int PlacedBlocks[20][10], int y, UINT16 *playfield);
# 62 "./events.h"
void update_rows(int PlacedBlocks[20][10], int row, UINT16 *playfield);
# 69 "./events.h"
int check_rotate_bounds(UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);
# 76 "./events.h"
void update_Score(int score, UINT32 *bitmap32);
# 84 "./events.h"
void update_LVL(int lvlCounter, UINT32 *bitmap32);
# 93 "./events.h"
int handle_key_q(int key);



void initializePlayingField(int Blocks[20][10]);
# 105 "./events.h"
int get_random_tetra();
# 115 "./events.h"
int handle_X_Keys(int key, UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);
# 125 "./events.h"
int handle_Y_Keys(int key, UINT16 tetra_bitmap[][4], int y, int x, int Blocks[20][10]);
# 133 "./events.h"
void handle_Rotate_Key(int key, UINT16 *fieldStart, UINT16 *fieldStartBuffer, UINT16 tetra_copy[][4],
UINT16 tetra_bitmap[][4], int y, int x, int PlacedBlocks[20][10], int BufferBlocks[20][10]);
# 49 "main.c" 2
# 1 "./base.h" 1
# 1 "./types.h" 1
# 13 "./base.h" 2
# 20 "./base.h"
UINT16 *get_video_base();
# 27 "./base.h"
void *set_video_base(UINT16 *base);
# 50 "main.c" 2
# 1 "./isr.h" 1
# 1 "./types.h" 1
# 13 "./isr.h" 2
# 1 "./vbl.h" 1
# 1 "./types.h" 1
# 13 "./vbl.h" 2
# 20 "./vbl.h"
void vbl_isr();
# 14 "./isr.h" 2
# 20 "./isr.h"
typedef void (*Vector) ();





void vbl_req() ;



void install_vectors();
# 38 "./isr.h"
Vector install_vector(int num, Vector vector);



void remove_vectors();
# 51 "main.c" 2
# 1 "./render.h" 1
# 1 "./types.h" 1
# 13 "./render.h" 2
# 20 "./render.h"
void loadScreen(UINT16 *base);





void loadPlayField(UINT16 *base);





void write_FieldBlocks(int Block[20][10], UINT16 *playfield);
# 39 "./render.h"
void write_tetramino(UINT16 *base, UINT16 tetra_bitmap[][4]);
# 46 "./render.h"
void plot_font(UINT32 *base, int x, int y, UINT32 *bitmap, int height);





void write_level(UINT32 *base32);
# 59 "./render.h"
void write_tetris(UINT32 *base32, int x);





void writeScore(UINT32 *base32);
# 72 "./render.h"
void writeZeros(UINT32 *base32);
# 79 "./render.h"
void writeLvlNum(UINT32 *base32);
# 52 "main.c" 2
# 1 "./menu.h" 1
# 1 "./types.h" 1
# 13 "./menu.h" 2
# 20 "./menu.h"
int menu_screen(UINT16 *base, UINT32 *base32);
# 27 "./menu.h"
void start_button(UINT16 *bitmap, UINT32 *bitmap32);
# 34 "./menu.h"
void quit_button(UINT16 *bitmap, UINT32 *bitmap32);
# 53 "main.c" 2





struct Tetramino
{
	int x, y;
};


int main()
{

	struct Tetramino tetramino;
	struct Tetramino copy;



	int fieldStartOffset = 2  + (40  * 63 );
	int PlacedBlocks[20 ][10 ];
	int BufferBlocks[20 ][10 ];


	long *timer = (lon