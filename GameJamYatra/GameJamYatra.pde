import processing.video.*; //import library

int Scene = 1; //Scenes/different pages
//load classes
GOB gob;
aemula aemula;
anasuja anasuja;
otarantula otarantula;
//load classes
Movie GOBmovie;
boolean playVideo = false;
int StartTime = -1;

void setup()
{
  size(1920, 1000);
  //initialize classes
  gob = new GOB();
  aemula = new aemula();
  anasuja = new anasuja();
  otarantula = new otarantula();
  GOBmovie = new Movie(this, "gobmovie.mov");
  //stop and start the video
  if(playVideo == true)
  {
   GOBmovie.play();
  }
}

void draw()
//calling upon certain voids if the conditions are met to change the screen
{
  if (Scene == 1)
  {
    MenuScene();
  }
  if (Scene == 2)
  {
    GOBScene();
  }
  if (Scene == 3)
  {
    aemulaScene();
  }
  if (Scene == 4)
  {
    anasujaScene();
  }
  if (Scene == 5)
  {
    otarantulaScene();
  }
}

void MenuScene() //initial menu screen for navigation
{
  background(0, 0, 0);
  textSize(40);
  text("Start Experience", width/2-100, height/2);
  if (keyPressed)
  {
    if (key == ' ')
    {
      Scene = 2;
    }
    if (key == '1')
    {
      Scene = 3;
    }
    if (key == '2')
    {
      Scene = 4;
    }
    if (key == '3')
    {
      otarantulaScene();
    }
  }
}

void GOBScene() //Golden orb-weaver
{
  background(255, 255, 255);
  //initialize video
  image(GOBmovie,0,0);
  if (keyPressed) //navigation
  {
    if (key == 'm'|| key == 'M') // go back to meny screen
    {
      Scene = 1;
    }
    if (key == ' ') //if Space is pressed, play the video
    {
      playVideo = true;
    }
  }
    gob.Render()
}

void aemulaScene() //aemula spider
{
  background(255, 255, 255);
  aemula.Render();
    if (keyPressed)
  {
    if (key == 'm'|| key == 'M')
    {
      Scene = 1;
    }
  }
}

void anasujaScene()
{
  background(255, 255, 255);
  anasuja.Render();
    if (keyPressed)
  {
    if (key == 'm'|| key == 'M')
    {
      Scene = 1;
    }
  }
}

void otarantulaScene()
{
    if (keyPressed)
  {
    if (key == 'm'|| key == 'M')
    {
      Scene = 1;
    }
  }
}

//required movie code
void movieEvent(Movie m) {
  m.read();
}
