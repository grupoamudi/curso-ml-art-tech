class CA{

    int[] celulas; // 0 - branco, 1 - preto
    int geracoes;
    int[] regras = {0, 1, 0, 1, 1, 0, 1, 0};

    int no = 21; //numero de celulas no tabuleiro
    
    //Construtor para comecar com uma grade definida
    CA(){
      geracoes = 0;
      
      celulas = new int[no];
      
      for(int i = 0; i < no-1; i++){
        celulas[i] = 0;
      }
      
      celulas[celulas.length/2] = 1;
      //celulas.length = 11 --> celulas[no/2]
    }


    void recomeca(){
    
    }

    // funcao que gera a proxima geracao
    void gera(){
      int[] prox_ger = new int[celulas.length];
      
      for(int i = 1; i < celulas.length - 1; i++){
        int esq = celulas[i-1];
        int eu = celulas[i];
        int dir = celulas[i+1];
        
        prox_ger[i] = aplica_regra(dir, eu, esq);
      }
      
      celulas = prox_ger;
      geracoes = geracoes + 1; //geracoes++
    
    }

    void display(){
      for (int i = 0; i < celulas.length; i++){
        if (celulas[i] == 1) fill(0); //escala de cinza, 0 eh preto
        else fill(255); //escala de cinza, 255 eh branco
        noStroke();
        rect(i*no, geracoes*no, no, no);
        
      }
    }

    int aplica_regra(int a, int b, int c){
      //if (a == 1 && b == 1 && c == 1) return regras[0];
      //if (a == 1 && b == 1 && c == 0) return regras[1];
      //if (a == 1 && b == 0 && c == 1) return regras[2];
      //if (a == 1 && b == 0 && c == 0) return regras[3];
      //if (a == 0 && b == 1 && c == 1) return regras[4];
      //if (a == 0 && b == 1 && c == 0) return regras[5];
      //if (a == 0 && b == 0 && c == 1) return regras[6];
      //if (a == 0 && b == 0 && c == 0) return regras[7];
      
      if (a == 1 && b == 1 && c == 1) return 0;
      if (a == 1 && b == 1 && c == 0) return 1;
      if (a == 1 && b == 0 && c == 1) return 0;
      if (a == 1 && b == 0 && c == 0) return 1;
      if (a == 0 && b == 1 && c == 1) return 1;
      if (a == 0 && b == 1 && c == 0) return 0;
      if (a == 0 && b == 0 && c == 1) return 1;
      if (a == 0 && b == 0 && c == 0) return 0;
      return 0;
    }

}
