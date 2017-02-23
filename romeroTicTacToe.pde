boolean reset = false;
int resetCounter = 300;
float backgroundColorR = random(255);
float backgroundColorG = random(255);
float backgroundColorB = random(255);
void setup(){
  size(300,300);
  for(resetCounter = 300;(backgroundColorR >= 235 && backgroundColorG <= 20 && backgroundColorB <= 20) || (backgroundColorB >= 235 && backgroundColorR <= 0 && backgroundColorG <= 20);resetCounter = 300){
    backgroundColorR = random(255);
    backgroundColorG = random(255);
    backgroundColorB = random(255);
  }
  background(backgroundColorR,backgroundColorG,backgroundColorB);
}
float player = 11;// Who goes first, 11 for X, 10 for O
int [] box = {1, 1, 1, 1, 1, 1, 1, 1, 1};
int [] boxScoreX = new int [9];
int [] boxScoreO = new int [9]; //<>//
void draw(){ //<>//
  textSize(30);
  stroke(0);
  line(100,0,100,300);
  line(200,0,200,300);
  line(0,100,300,100);
  line(0,200,300,200);
  if(mouseX < 100 && mouseX > 0 && mouseY < 100 && mouseY > 0 && mousePressed && box [0] == 1){ //<>//
    if(player == 10){
    stroke(255,0,0);
    ellipse(50,50,50,50);
    player = 11; //<>//
    boxScoreO [0] = 2; //<>//
    }else{ //<>//
      stroke(0,0,255);
      line(25,25,75,75);
      line(75,25,25,75);
      player = 10; //<>//
      boxScoreX [0] = 2; //<>//
    }
    noStroke();
    box [0] = 0; //<>//
  }else if(mouseX < 200 && mouseX > 100 && mouseY < 100 && mouseY > 0 && mousePressed && box [1] == 1){ //<>//
      if(player == 10){ //<>//
      stroke(255,0,0);
      ellipse(150,50,50,50);
      player = 11; //<>//
      boxScoreO [1] = 9; //<>//
      }else{ //<>//
        stroke(0,0,255);
        line(125,25,175,75);
        line(175,25,125,75);
        player = 10; //<>//
        boxScoreX [1] = 9; //<>//
      }
      noStroke();
      box [1] = 0; //<>//
    }else if(mouseX < 300 && mouseX > 200 && mouseY < 100 && mouseY > 0 && mousePressed && box [2] == 1){ //<>//
        if(player == 10){ //<>//
          stroke(255,0,0);
          ellipse(250,50,50,50);
          player = 11; //<>//
          boxScoreO [2] = 4; //<>//
        }else{ //<>//
          stroke(0,0,255);
          line(225,25,275,75);
          line(275,25,225,75);
          player = 10; //<>//
          boxScoreX [2] = 4; //<>//
        }
        noStroke();
        box [2] = 0; //<>//
      }else if(mouseX < 100 && mouseX > 0 && mouseY < 200 && mouseY > 100 && mousePressed && box [3] == 1){ //<>//
          if(player == 10){ //<>//
            stroke(255,0,0);
            ellipse(50,150,50,50);
            player = 11; //<>//
            boxScoreO [3] = 7; //<>//
          }else{ //<>//
            stroke(0,0,255);
            line(25,125,75,175);
            line(75,125,25,175);
            player = 10; //<>//
            boxScoreX [3] = 7; //<>//
          }
          noStroke();
          box [3] = 0; //<>//
        }else if(mouseX < 200 && mouseX > 100 && mouseY < 200 && mouseY > 100 && mousePressed && box [4] == 1){ //<>//
            if(player == 10){
              stroke(255,0,0);
              ellipse(150,150,50,50);
              player = 11; //<>//
              boxScoreO [4] = 5; //<>//
            }else{ //<>//
              stroke(0,0,255);
              line(125,125,175,175);
              line(175,125,125,175);
              player = 10; //<>//
              boxScoreX [4] = 5; //<>//
            }
            noStroke();
            box [4] = 0; //<>//
          }else if(mouseX < 300 && mouseX > 200 && mouseY < 200 && mouseY > 100 && mousePressed && box [5] == 1){ //<>//
              if(player == 10){
                stroke(255,0,0);
                ellipse(250,150,50,50);
                player = 11; //<>//
                boxScoreO [5] = 3; //<>//
              }else{ //<>//
                stroke(0,0,255);
                line(225,125,275,175);
                line(275,125,225,175);
                player = 10; //<>//
                boxScoreX [5] = 3; //<>//
              }
              noStroke();
              box [5] = 0; //<>//
            }else if(mouseX < 100 && mouseX > 0 && mouseY < 300 && mouseY > 200 && mousePressed && box [6] == 1){ //<>//
                if(player == 10){
                  stroke(255,0,0);
                  ellipse(50,250,50,50);
                  player = 11; //<>//
                  boxScoreO [6] = 6; //<>//
                }else{ //<>//
                  stroke(0,0,255);
                  line(25,225,75,275);
                  line(75,225,25,275);
                  player = 10; //<>//
                  boxScoreX [6] = 6; //<>//
                } 
                noStroke();
                box [6] = 0; //<>//
              }else if(mouseX < 200 && mouseX > 100 && mouseY < 300 && mouseY > 200 && mousePressed && box [7] == 1){ //<>//
                if(player == 10){
                  stroke(255,0,0);
                  ellipse(150,250,50,50);
                  player = 11; //<>//
                  boxScoreO [7] = 1; //<>//
                }else{ //<>//
                  stroke(0,0,255);
                  line(125,225,175,275);
                  line(175,225,125,275);
                  player = 10; //<>//
                  boxScoreX [7]= 1; //<>//
                }
                noStroke();
                box [7] = 0; //<>//
                }else if(mouseX < 300 && mouseX > 200 && mouseY < 300 && mouseY > 200 && mousePressed && box [8] == 1){ //<>//
                  if(player == 10){
                    stroke(255,0,0);
                    ellipse(250,250,50,50);
                    player = 11; //<>//
                    boxScoreO [8] = 8; //<>//
                  }else{ //<>//
                    stroke(0,0,255);
                    line(225,225,275,275);
                    line(275,225,225,275);
                    player = 10; //<>//
                    boxScoreX [8] = 8; //<>//
                  }
                  noStroke();
                  box [8] = 0; //<>//
              }
  fill(0);
  if(boxScoreX [0]+ boxScoreX [1] + boxScoreX [2] == 15 || boxScoreX [3] + boxScoreX [4]+ boxScoreX [5] == 15 || boxScoreX [6] + boxScoreX [7] + boxScoreX [8] == 15 || boxScoreX [0] + boxScoreX [3] + boxScoreX [6] == 15 || boxScoreX [1] + boxScoreX [4] + boxScoreX [7] == 15 || boxScoreX [2] + boxScoreX [5] + boxScoreX [8] == 15 || boxScoreX [0] + boxScoreX [4] + boxScoreX [8] == 15 || boxScoreX [2] + boxScoreX [4] + boxScoreX [6] == 15){ //<>//
    fill(random(255),random(255),random(255));
    text("X Wins!!!",100,100);
    for(int i = 0; i <= 8;i++){
      box [i] = 0;
    }
    resetCounter--;
    textSize(15);
    fill(0);
    text("Resetting in 5 seconds", 120,250);
    if(resetCounter == 0){
      reset = true;
    } //<>//
  }else if(boxScoreO [0] + boxScoreO [1] + boxScoreO [2] == 15 || boxScoreO [3] + boxScoreO [4] + boxScoreO [5] == 15 || boxScoreO [6] + boxScoreO [7] + boxScoreO [8] == 15 || boxScoreO [0] + boxScoreO [3] + boxScoreO [6] == 15 || boxScoreO [1] + boxScoreO [4] + boxScoreO [7] == 15 || boxScoreO [2] + boxScoreO [5] + boxScoreO [8] == 15 || boxScoreO [0] + boxScoreO [4] + boxScoreO [8] == 15 || boxScoreO [2] + boxScoreO [4] + boxScoreO [6] == 15){ //<>//
    fill(random(255),random(255),random(255));
    text("O Wins!!!",100,100); //<>//
    for(int i = 0; i <= 8;i++){
      box [i] = 0;
    }
    resetCounter--;
    textSize(15);
    fill(0);
    text("Resetting in 5 seconds", 120,250);
    if(resetCounter == 0){
      reset = true;
    } //<>//
  }else if(box [0] + box [1] + box [2] + box [3] + box [4] + box [5] + box [6] + box [7] + box [8] == 0){ //<>//
    fill(random(255),random(255),random(255));
    text("NOBODY WINS",random(-50,200),random(300)); //<>//
    resetCounter--;
    textSize(20);
    fill(0);
    text("Resetting in 5 seconds", 80,250);
    if(resetCounter == 0){
      reset = true;
    } //<>//
  }
  if(reset){ //<>//
    background(backgroundColorR,backgroundColorG,backgroundColorB);
    player = 11;// Who goes first, 11 for X, 10 for O
    for(int i = 0; i <= 8;i++){
      box [i] = 1;
      boxScoreX [i] = 0;
      boxScoreO [i] = 0;
    }
    reset = false; //<>//
    resetCounter = 300;
  }
  fill(backgroundColorR,backgroundColorG,backgroundColorB);
}