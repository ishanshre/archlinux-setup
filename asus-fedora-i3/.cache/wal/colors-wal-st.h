const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0a0909", /* black   */
  [1] = "#324A70", /* red     */
  [2] = "#5C536B", /* green   */
  [3] = "#A8502A", /* yellow  */
  [4] = "#9F5E63", /* blue    */
  [5] = "#E1675B", /* magenta */
  [6] = "#ED9265", /* cyan    */
  [7] = "#b5aeb7", /* white   */

  /* 8 bright colors */
  [8]  = "#7e7980",  /* black   */
  [9]  = "#324A70",  /* red     */
  [10] = "#5C536B", /* green   */
  [11] = "#A8502A", /* yellow  */
  [12] = "#9F5E63", /* blue    */
  [13] = "#E1675B", /* magenta */
  [14] = "#ED9265", /* cyan    */
  [15] = "#b5aeb7", /* white   */

  /* special colors */
  [256] = "#0a0909", /* background */
  [257] = "#b5aeb7", /* foreground */
  [258] = "#b5aeb7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
