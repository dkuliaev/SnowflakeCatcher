Snowflake [] cloud;


void setup()
{
    background(0);
    size(1000, 600);

    cloud = new Snowflake[1000];
    for(int i = 0; i < cloud.length; i++)
    {
        cloud[i]= new Snowflake();
    }
}
void draw()
{
  stroke(0, 255, 0);
  line(0, 500, 1000, 500);
  for(int j = 0; j < cloud.length; j++)
  {
    cloud[j].wrap();
    cloud[j].show();
    cloud[j].lookDown();
    cloud[j].move();
    

if(mousePressed == true && mouseButton == LEFT)
 {
  noStroke();
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
  }
if(mousePressed == true && mouseButton == RIGHT)
  {
    fill(0);
    ellipse(mouseX, mouseY, 20, 20);
  } 
 }
}

class Snowflake
{

  int flakeX, flakeY;
  boolean flakeMove, flakeMoveOtherPart;
  Snowflake()
  {

    flakeX = (int)(Math.random() * 1000);
    flakeY = (int)(Math.random() * 5000 - 5000);
    flakeMove = true;
    flakeMoveOtherPart = true;
    
  }
  void show()
  {
    
    fill(255);
    stroke(255);
    text("*", flakeX, flakeY);
    //ellipse(flakeX, flakeY, 5, 5);
    stroke(0);
    fill(0);
    ellipse(flakeX+2, flakeY - 10, 4, 4);
   
  }
  void lookDown()
  {

    if(get(flakeX, flakeY + 3) == color(255, 0, 0))
    {
      flakeY += -1;
    } 
    if(get(flakeX, flakeY) == color(0, 255, 0))
    {
      flakeY = -3500;

    }
    if(get(flakeX, flakeY + 3) == color(255))
    {
      flakeY += -1;
      flakeX = (int)(Math.random() * 1000);
    }
  }

    
  void move()
  {
   if(flakeMove == true)
      flakeY += 1;

   if(flakeY <= 0)
    {
      flakeY += 2;
    }
    
  }
  void wrap()
  {
    
  }
}


