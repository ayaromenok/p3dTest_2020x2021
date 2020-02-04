include <../../05_PanzerWheel/scad/simplePartsLib.scad>

//singleInt();
//singleExt();
//dualExt();
//dualInt();

module singleInt(){
    roadWheel(support=8, supBolts=true);
    roadWheel(support=1, supBolts=false, px=50);
}
module singleExt(){
    roadWheel(support=8, supBolts=false, py=50);
    roadWheel(support=1, supBolts=true, px=50, py=50);
}

module dualExt(){
    roadWheel(support=1, px=0);
    roadWheel(support=2, supBolts=false, px=50);

    roadWheel(supBolts=false, px=0, py=50);
    roadWheel(support=16, supBolts=false, px=50, py=50);
}    

module dualInt(){
    roadWheel(support=16);
    roadWheel(support=2, supBolts=false, px=50);

    roadWheel(supBolts=false, py=50);
    roadWheel(support=1, supBolts=false, px=50, py=50);
}