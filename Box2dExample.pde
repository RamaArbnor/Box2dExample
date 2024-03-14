import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Box> boxes;

void setup(){
    size(400,200);
    textSize(40);
    boxes = new ArrayList<Box>();

    box2d = new Box2DProcessing(this);
    box2d.createWorld();
    // We are setting a custom gravity
    box2d.setGravity(0, -20);

}

void draw(){
    box2d.step();
    background(41,109,207);
    int s = second();
    text(s,100,100);

    for(int i=0; i < boxes.size(); i++){
        Box b = boxes.get(i);
        b.display();
    }
}

void mousePressed(){
    
    float x = mouseX;
    float y = mouseY;
    Box b = new Box(x,y);
    boxes.add(b);
  
}
