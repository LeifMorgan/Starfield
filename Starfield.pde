Particle [] rParticle;
void setup()
{
	size(500,500);
	//your code here

	rParticle  = new Particle[300];

	for(int i = 0; i < rParticle.length; i++){
		rParticle[i] = new NormalParticle();
	}
		rParticle[0] = new OddballParticle();
		rParticle[1] = new JumboParticle();
}
void draw()
{
	background(0,0,20);
	
	for(int i = 0; i < rParticle.length; i++){
		rParticle[i].move();
		rParticle[i].show();

	//your code here
	}

}
class NormalParticle implements Particle
{
	double x, y;
	int pColor;
	double pAngle;
	double pSpeed;
	

	NormalParticle(){
		x = (Math.random()*100+200.0);
		y = (Math.random()*100+200.0);
		pColor = color((int)(Math.random()*100+1),(int)(Math.random()*100+1),(int)(Math.random()*100+1));
		pAngle = (Math.random()*Math.PI*2);
		pSpeed = 3;
		
	}

	public void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		pAngle = pAngle - 0.018;		

	


		 


	}

	public void show(){
		noStroke();
		fill(pColor);
		rect((float)x,(float)y,10.0,10.0,10.0);
	
		}
}


interface Particle
{
	public void show();
	public void move();//your code here
}
class OddballParticle implements Particle //uses an interface
{
	double myX, myY;
		OddballParticle(){
			myX = 300;
			myY = 350;
		}

	public void show(){
		fill(100);
		rect((float)myX,(float)myY, 5.0,5.0,15.0);
	}
	public void move(){
		myX = myX + (Math.random()*3-1.5);
 		myY = myY + (Math.random()*3-1.5);
	}
		
}
class JumboParticle extends NormalParticle //uses inheritance
{
	
	public void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		pAngle = pAngle - 0.012;	
	}

	public void show(){
		noStroke();
		fill(pColor);
		rect((float)x,(float)y,50.0,50.0,30.0);
	
		}
}

