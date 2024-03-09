// array list named balls, for loop to run all the balls

ArrayList<PVector> particles;

void setup(){
    size(400,200);
    textSize(40);
    particles = new ArrayList<PVector>();
}

void draw(){
    background(41,109,207);
    int s = second();
    text(s,100,100);

    for(int i=0; i<particles.size(); i++){
        PVector p = particles.get(i);
        ellipse(p.x, p.y, 10, 10);
    }
}

void mousePressed(){
    for(int i=0; i<100; i++){
        float x = mouseX;
        float y = mouseY;
        PVector p = new PVector(x,y);
        particles.add(p);
    }
}
