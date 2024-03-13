class Box {

    Body body;

    float x;
    float y;

    float w;
    float h;

    Box(float x, float y) {
        this.x = x;
        this.y = y;
        this.w = 16;
        this.h = 16;

        BodyDef bd = new BodyDef();
        bd.type = BodyType.DYNAMIC;
        bd.position.set(box2d.coordPixelsToWorld(x, y));
        body = box2d.createBody(bd);
        

    }

    void display() {
        fill(255);
        rect(x, y, w, h);


    }





}