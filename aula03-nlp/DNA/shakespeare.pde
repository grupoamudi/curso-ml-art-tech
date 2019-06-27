float mutationRate = 0.01;    // Mutation rate
int totalPopulation = 150;      // Total Population

DNAx[] population;             // Array to hold the current population
ArrayList<DNAx> matingPool;    // ArrayList which we will use for our "mating pool"
String target;                // Target phrase

PFont f;

public void settings(){
  size(800, 200);
}

void setup() {
  target = "to be or not to be";

  population = new DNAx[totalPopulation];

  for (int i = 0; i < population.length; i++) {
    population[i] = new DNAx(target.length());
  }
  
  f = createFont("Courier",12,true);
}

void draw() {
  for (int i = 0; i < population.length; i++) {
    population[i].calcFitness(target);
  }

  ArrayList<DNAx> matingPool = new ArrayList<DNAx>();  // ArrayList which we will use for our "mating pool"

  for (int i = 0; i < population.length; i++) {
    int nnnn = int(population[i].fitness * 100);  // Arbitrary multiplier, we can also use monte carlo method
    for (int j = 0; j <nnnn; j++) {              // and pick two random numbers
      matingPool.add(population[i]);
    }
  }

  for (int i = 0; i < population.length; i++) {
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));
    DNAx partnerA = matingPool.get(a);
    DNAx partnerB = matingPool.get(b);
    DNAx child = partnerA.crossover(partnerB);
    child.mutate(mutationRate);
    population[i] = child;
  }
  
  background(255);
  fill(0);
  String everything = "";
  for (int i = 0; i < population.length; i++) {
    everything += population[i].getPhrase() + "     ";
  }
  textFont(f,12);
  text(everything,10,10,width,height);

  
}
