ArrayList<Box> boxes;

void setup(){
    size(400,200);
    textSize(40);
    boxes = new ArrayList<Box>();
}

void draw(){
    background(41,109,207);
    int s = second();
    text(s,100,100);

    for(int i=0; i < boxes.size(); i++){
        Box b = boxes.get(i);
        b.display();
    }
}

void mousePressed(){
    for(int i=0; i<100; i++){
        float x = mouseX;
        float y = mouseY;
        Box b = new Box(x,y);
        boxes.add(b);
    }
}
