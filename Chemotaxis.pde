 //declare bacteria variables here   
 Bacteria [] bac;
 void setup()   
 {	
 	size(500,500);
 	bac =  new Bacteria[50];
 	for (int i=0;i<49; i++)
 		bac[i] = new Bacteria(250,250);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(255, 255, 255);
 	for (int i=0;i<49; i++){
	 	bac[i].show();
 		bac[i].move();
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {   
 	int newX, newY, bacColor;
 	Bacteria(int x, int y){
 		bacColor = color(255, 0, 0);
 		newX=x;
 		newY=y;
 	}
 	void move(){
 		newX=newX+(int)(Math.random()*5);
 		newY=newY+(int)(Math.random()*5);
 		if(newX>500)
 			newX=0;
 		if(newY>=500)
 			newY=0;
 	}
 	void show(){
 		fill(bacColor);
 		ellipse(newX, newY, 30, 30);
 	}
 	//lots of java!   
 }    