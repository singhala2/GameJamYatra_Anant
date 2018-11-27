//golden orb-web spider

class GOB
{
  int COUNT = 20; //number of spiders on screen
  //spider movement and location variables
  float y[] = new float[COUNT];
  float x[] = new float[COUNT];
  float speedX[] = new float[COUNT];
  float speedY[] = new float[COUNT];
  //new image of spiders
  PImage GOB[] = new PImage[COUNT];
  //navigation in this screen
  int Scene = 1;

//Default constructor
  GOB()
  {
    //for statement for location, movement and image
    for (int i = 0; i<COUNT; i++)
    {
      x[i] = random(0, 1920);
      y[i] = random(0, 1000);
      speedX[i] = random(-1, 1);
      speedY[i] = random(-1, 1);
      GOB[i] = loadImage("gob.png");
      GOB[i].resize(90, 90);
    }
  }
  
  //render/draw function
  void Render()
  {
    if (Scene == 1)
    {
      for (int i=0; i<COUNT; i++)
      {
        image(GOB[i], x[i], y[i]);
        x[i] += speedX[i];
        y[i] += speedY[i];
        if (x[i] > 1920||x[i] < 0||y[i]>1000||y[i]<0)
        {
          x[i] = random(0, 1920);
          y[i] = random(0, 1000);
        }
      }
      textSize(100);
      fill(0);
      //navigation
      text("Press F to continue", 100, 900);
      if (keyPressed)
      {
        if(key == 'f')
        {
          Scene = 2;
        }
      }
    }
    if (Scene == 2)
    {
      fill(0,0,0);
      textSize(30);
      text("Press I for some key information", 100, 900);
      text("Press P for a large image", 100, 800);
      if (keyPressed)
      {
        if (key == 'v'||key == 'V')
        {
          Scene = 3;
        }
        if (key == 'i'||key == 'I')
        {
          Scene = 4;
        }
        if (key == 'p'|| key == 'P')
        {
          Scene = 5;
        }
      }
    }
    if (Scene == 3)
    {
    image(GOBmovie, width/2, height/2);
    }
    if (Scene == 4)
    {
      
    }
    if (Scene == 5)
    {
      
    }
  }
}
