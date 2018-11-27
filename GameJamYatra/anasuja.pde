class anasuja
{
  int COUNT = 20;
  float y[] = new float[COUNT];
  float x[] = new float[COUNT];
  float speedX[] = new float[COUNT];
  float speedY[] = new float[COUNT];
  PImage anasuja[] = new PImage[COUNT];
  int Scene = 1;

  anasuja()
  {
    for (int i = 0; i<COUNT; i++)
    {
      x[i] = random(0, 1920);
      y[i] = random(0, 1000);
      speedX[i] = random(-1, 1);
      speedY[i] = random(-1, 1);
      anasuja[i] = loadImage("anasuja.png");
      anasuja[i].resize(90, 90);
    }
  }
  void Render()
  {
    if (Scene == 1)
    {
      for (int i=0; i<COUNT; i++)
      {
        image(anasuja[i], x[i], y[i]);
        x[i] += speedX[i];
        y[i] += speedY[i];
        if (x[i] > 1920||x[i] < 0||y[i]>1000||y[i]<0)
        {
          x[i] = random(0, 1920);
          y[i] = random(0, 1000);
        }
      }
      textSize(100);
      text("Press F to continue", 100, 100);
      if (keyPressed)
      {
        if (key == 'f')
        {
          Scene = 2;
        }
      }
    }
    if (Scene == 2)
    {
      fill(0, 0, 0);
      textSize(30);
      text("Press V for a video", 100, 100);
      text("Press I for some key information", 100, 200);
      text("Press P for a full-screen image", 100, 300);
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
    }
    if (Scene == 4)
    {
    }
    if (Scene == 5)
    {
    }
  }
}
