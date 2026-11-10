class Carro {
  #combustivel;

  constructor(marca, modelo, cor, combustivelInicial = 20) {
    this.marca = marca;         // Propriedade Pública
    this.modelo = modelo;       // Propriedade Pública
    this.cor = cor;             // Propriedade Pública
    this.ligado = false;        // Estado inicial
    this.velocidade = 0;        // Estado inicial

    this.#combustivel = combustivelInicial;
  }

  get combustivel() {
    return this.#combustivel;
  }


  correr() {
    // Condicional simples: só corre se o carro estiver ligado
    if (this.ligado) {
      this.velocidade += 10;
      this.#combustivel -= 2; // Gasta 2L de combustível por corrida
      console.log(`O ${this.modelo} acelerou para ${this.velocidade} km/h!`);
    } else {
      console.log(`O ${this.modelo} não pode correr porque está desligado.`);
    }
  }
}



const carro01 = new Carro("Toyota", "Corolla", "Prata", 50);
carro01.correr();


console.log(`Tanque atual: ${carro01.combustivel} litros`)

carro01.combustivel = 1000;
console.log(`Tentativa de mudar pelo get: ${carro01.combustivel}L`);