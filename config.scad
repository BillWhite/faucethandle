include <constructive-compiled.scad>

$fn=$preview ? 30 : 120;
fnCornerValue = $preview ? 10 : 30;

baseOuterD=55;
// Here, Thick means the thick part of the faucet,
// and Thin means the thin part of the faucet. So the
// thick D number is bigger than the thin D number.
baseInnerThinD=20;
baseInnerThickD=39;
baseThickH=45;
// We have baseOuterD = baseInnerThickD + baseThickWall * 2. So
// baseThickWall = baseOuterD - baseInnerThickD
baseThickWall=(baseOuterD-baseInnerThickD)/2;

baseThinH=20;
// Again, baseOuterD = baseInnerThinD + baseThinWall * 2. So
// baseThinWall = (baseOuterD - baseInnerThinD)/2. Note that
// this means baseThinWall is larger than baseThickWall. This
// is because the wall for the thin pipe is larger than the
// wall for the thick pipe.
baseThinWall=(baseOuterD-baseInnerThinD)/2;
baseH=baseThickH + baseThinH;
EPS=0.1;

module handle() {
    turnYZ(90) chamfer(-1, 5, 5, fnCorner=fnCornerValue) box(10, z=70);
}