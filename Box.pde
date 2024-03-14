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
        
        PolygonShape ps = new PolygonShape();
        float box2dW = box2d.scalarPixelsToWorld(w/2);
        float box2dH = box2d.scalarPixelsToWorld(h/2);
        ps.setAsBox(box2dW, box2dH);

        FixtureDef fd = new FixtureDef();
        fd.shape = ps;
        fd.density = 1;
        fd.friction = 0.3;
        fd.restitution = 0.5;

        body.createFixture(fd);
        body.setUserData(this);



    }

    void display() {
        Vec2 pos = box2d.getBodyPixelCoord(body);
        float a = body.getAngle();
        fill(255);
        stroke(0);
        // rectMode(CENTER);
        rotate(-a);
        rect(pos.x, pos.y, w, h);
        rotate(a);


    }





}