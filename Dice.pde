int sum = 0;
void setup()
{
  size(500,600);
	noLoop();
}

void draw()
{
	//your code here
	background(195);
  for(int y=0; y<501; y+=50){
    for(int x=0; x<501; x+=50){
  		Die yeet = new Die (x,y);
  		yeet.show();
  	}
  }
  textAlign(CENTER,CENTER);
  textSize(48);
  text("Sum of all dice ="+sum, 250, 570);
}

void mousePressed()
{
	redraw();
  sum=0;
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, rollNum;

	
	Die(int x, int y) //constructor
	{
		//variable initializations here
    roll();
    myX=x;
    myY=y;
	}
	void roll()
	{
		rollNum=(int)(Math.random()*6)+1;
	}
	void show()
	{
		fill((int)(Math.random()*200)+55,(int)(Math.random()*200)+55,(int)(Math.random()*200)+55);
    rect(myX,myY,50,50);
    fill(0);
    if(rollNum==1){
      ellipse(myX+25, myY+25, 5, 5);
      sum+=1;
    }
    if(rollNum==2){
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      sum+=2;
    }
    if(rollNum==3){
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      sum+=3;
    }
    if(rollNum==4){
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      sum+=4;
    }
    if(rollNum==5){
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      sum+=5;
    }
    if(rollNum==6){
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5); 
      ellipse(myX+10, myY+25, 5, 5);
      ellipse(myX+40, myY+25, 5, 5);
      sum+=6;
    }
	}
}
