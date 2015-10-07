NormalParticle [] rParticle;
void setup()
{
	size(500,500);
	//your code here
	
	rParticle  = new NormalParticle[500];

	for(int i = 0; i < rParticle.length; i++){
		rParticle[i] = new NormalParticle();
	}
}
void draw()
{
	background(0,0,40);
	for(int i = 0; i < rParticle.length; i++){
		rParticle[i].move();
		rParticle[i].show();

	//your code here
	}

}
class NormalParticle
{
	double x, y;
	int pColor;
	double pAngle;
	double pSpeed;

	NormalParticle(){
		x = 250.0;
		y = 250.0;
		pColor = color((int)(Math.random()*100+1),(int)(Math.random()*100+1),(int)(Math.random()*100+1));
		pAngle = (Math.random()*Math.PI*2);
		pSpeed = 3;
	}

	void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		if(x >= 700 ){
			x = 250.0;
		} if (x <= -200){
			x = 250.0;
		} if(y >= 700){
			y = 250.0;
		} if(y <= -200){
			y = 250.0;
		}

	}

	void show(){
		fill(pColor);
		rect((float)x,(float)y,10.0,10.0,10.0);
	}
}


interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

