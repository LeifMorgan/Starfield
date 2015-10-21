Particle [] rParticle;
Particles [] tParticle;
void setup()
{
	size(500,500);
	//your code here

	rParticle  = new Particle[300];
	tParticle = new Particles[298];

	for(int i = 0; i < rParticle.length; i++){
		rParticle[i] = new NormalParticle();
		
	} 
		
		rParticle[0] = new OddballParticle();
		rParticle[1] = new JumboParticle();


	for(int t = 0; t < tParticle.length; t++){
		tParticle[t] = new NormalParticle1();
	}
}


void draw()
{
	
	
	for(int i = 0; i < rParticle.length; i++){
		rParticle[i].move();
		rParticle[i].show();

	//your code here
	}
	for(int t = 0; t < tParticle.length; t++){
		tParticle[t].move();
		tParticle[t].show();
	}
	fill(0,0,0,20);
	rect(0,0,700,700);
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
		pColor = color((int)(Math.random()*200+100),(int)(Math.random()*200+100),(int)(Math.random()*200+100));
		pAngle = (Math.random()*Math.PI*2);
		pSpeed = 2.5;
		
	}

	public void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		pAngle = pAngle + 0.018;		

	}

	public void show(){
		noStroke();
		fill(pColor);
		rect((float)x,(float)y,10.0,10.0,10.0);
	
		}
}
class NormalParticle1 implements Particles
{
	double x1, y1, x2, y2;
	int cColor,dColor;
	double cAngle, dAngle;
	double cSpeed, dSpeed;

	NormalParticle1(){
		x1 = (Math.random()*100+200.0);
		y1 = (Math.random()*100+200.0);
		x2 = 250;
		y2 = 250;
		cColor = color((int)(Math.random()*150+75),(int)(Math.random()*150+75),(int)(Math.random()*150+75));
		dColor = color((int)(Math.random()*100+90),(int)(Math.random()*150+50),(int)(Math.random()*205+50));
		cAngle = (Math.random()*Math.PI*2);
		dAngle = (Math.random()*Math.PI*2);
		cSpeed = 1.8;
		dSpeed = (Math.random()*3-1.5);
		
	}

	public void move(){
		x1 = (Math.cos(cAngle)*cSpeed + x1);
		y1 = (Math.sin(cAngle)*cSpeed + y1);
		cAngle = cAngle - 0.018;		
		x2 = (Math.cos(dAngle)*dSpeed + x2);
		y2 = (Math.sin(dAngle)*dSpeed + y2);
		dAngle = dAngle + 0.018;
		

	}

	public void show(){
		noStroke();
		fill(cColor);
		rect((float)x1,(float)y1,10.0,10.0,10.0);
		fill(dColor);
		rect((float)x2, (float)y2, 10.0, 10.0,10.0);
	
		}

}

interface Particle
{
	public void show();
	public void move();//your code here
}


interface Particles
{
	public void show();
	public void move();
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

