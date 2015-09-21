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
  background(0);
  for(int j = 0; j < cloud.length; j++)
  {
    cloud[j].show();
    cloud[j].lookDown();
    //cloud[j].erase();
    cloud[j].move();
    cloud[j].wrap();
  }
}
void mouseDragged()
{
  
}

class Snowflake
{
  int flakeX, flakeY;
  boolean flakeMove;
  Snowflake()
  {
    flakeX = (int)(Math.random() * 1000);
    flakeY = (int)(Math.random() * 1000 - 1000);
    flakeMove = true;
  }
  void show()
  {
    fill(255);
    ellipse(flakeX, flakeY, 5, 5);
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    if(flakeMove == true)
      flakeY += 1;
  }
  void wrap()
  {
    //your code here
  }
}


