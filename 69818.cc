short x;
typedef long& R;
long& y = R(x);
typedef long* P;
long* z = P(&x);
