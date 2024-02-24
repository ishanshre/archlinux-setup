static const char norm_fg[] = "#b5aeb7";
static const char norm_bg[] = "#0a0909";
static const char norm_border[] = "#7e7980";

static const char sel_fg[] = "#b5aeb7";
static const char sel_bg[] = "#5C536B";
static const char sel_border[] = "#b5aeb7";

static const char urg_fg[] = "#b5aeb7";
static const char urg_bg[] = "#324A70";
static const char urg_border[] = "#324A70";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
