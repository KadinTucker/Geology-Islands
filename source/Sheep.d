import std.random;

class Sheep : Agent {

    int food;

    override void act(Island island){
        if(!this.eat(island)){
            this.move(island);
        }
        if(this.food < 5){
            this.die(island);
        }
    }

    bool eat(Island island){
        if(this.food <= 15 && island[this.location[0]][this.location[1]] == VegetationType.GRASS){
            island[this.location[0]][this.location[1]] = VegetationType.BARE;
            this.food += 5;
            return true;
        }
        return false;
    }

    void move(Island island){/*
        int[2][] possibleDestinations = this.getAdjacentTiles();
        foreach(tile; possibleDestinations){
            if
        }*/
    }

}