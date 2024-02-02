pragma circom 2.1.4;

function compare(a) {
    if (a == 0) { 
       return 1;
    } 
    return 0;
}

template Equality() {
    signal input a[3];
    signal output c;
    signal y1;
    y1 <-- (a[0] - a[1]) * (a[1] - a[2]);
    c <-- compare(y1);
}

component main = Equality();
