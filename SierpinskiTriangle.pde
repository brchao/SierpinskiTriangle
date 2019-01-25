public void setup()
{
	background(0);
	stroke(255,255,0);
	strokeWeight(2);
	size(800,800);
	sierpinski(0,800,800);
}
public void draw()
{
	

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20){
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else{
		fill(0);
		sierpinski(x, y, len/2);
		sierpinski((x+len/2), y, len/2);
		sierpinski((x+len/4),(y-len/2), len/2);
	}
}
