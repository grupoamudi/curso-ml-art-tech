class CA{

    int[] celulas;
    int geracoes;
    int[] regras = {0, 1, 0, 1, 1, 0, 1, 0};

    //Construtor para comecar com uma grade definida
    CA(){

    }


    void recomeca(){
    
    }

    void gera(){
    
    }

    void renderiza(){
    
    }

    int aplica_regra(int a, int b, int c){
      if (a == 1 && b == 1 && c == 1) return regras[0];
      if (a == 1 && b == 1 && c == 0) return regras[1];
      if (a == 1 && b == 0 && c == 1) return regras[2];
      if (a == 1 && b == 0 && c == 0) return regras[3];
      if (a == 0 && b == 1 && c == 1) return regras[4];
      if (a == 0 && b == 1 && c == 0) return regras[5];
      if (a == 0 && b == 0 && c == 1) return regras[6];
      if (a == 0 && b == 0 && c == 0) return regras[7];
      return 0;

    }
}
