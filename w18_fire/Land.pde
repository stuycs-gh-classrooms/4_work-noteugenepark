class Land {
int size;
int state;
int nextState;
int x;
int y;

  Land(int x1, int y1, int sz, int st) {
    x = x1;
    y = y1;
    size = sz;
    state = st;
  }

  void display() {
    if (state == DIRT) {
      fill(DIRT_COLOR);
    }
    else if (state == FIRE) {
      fill(FIRE_COLOR);
    }
    else if (state == BURNT) {
      fill(BURNT_COLOR);
    }
    else if (state == GRASS) {
      fill(GRASS_COLOR);
    }
    square(x, y, size);
  }

  void updateNextState(int neighborState) {
    if (state == FIRE) {
      nextState = BURNT;
    }
    else if (state == GRASS && neighborState  == FIRE) {
      nextState = FIRE;
    }
    else {
      nextState = state;
    }
  }
  
  void changeState() {
    state = nextState;
  }
}
