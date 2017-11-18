

abstract class Agent {

    int[2] location;

    void die(Island island){
        island[this.location[0]][this.location[1]].agent = null;
    }

    bool isValidDestination(int[2] destination){
        return island[destination[0]][destination[1]].agent is null;
    }

    int[2][] getAdjacentTiles(){
        return [[this.location[0] + 1, this.location[1]],
         [this.location[0] - 1, this.location[1]],
         [this.location[0], this.location[1] + 1],
         [this.location[0], this.location[1] - 1]];
    }

    abstract void act(Island island);

}