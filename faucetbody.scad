include <config.scad>

assemble() {
    g() {
        TOUP() stack(TOUP) { 
            tube(d=baseOuterD, h=baseThickH, wall=baseThickWall)
            tube(d=baseOuterD, h=baseThinH, wall=baseThinWall)
            ;
        };
        remove() {
            turnXY(-135) X(baseOuterD/2) Y(baseOuterD/2) Z(-EPS) TOUP() box(55, h=baseH+2*EPS);
            Y(-baseOuterD/4) TOUP() box(x=baseInnerThinD,
                y=baseOuterD/2,
                z=baseH+2*EPS);
            Z(65-40.3+4) turnYZ(90) tube(d=8.2, h=60, solid=true);
            TOUP() Y(baseOuterD/2) box(65-40.3+4, x=8.2);
        }
    }
    add() {
            Z(45) Y(60) handle();
    }
}    
