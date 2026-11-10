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

    set combustivel(novoValor) {
    if (novoValor < 0) {
      console.log("ERRO: O combustível não pode ser negativo!");
    } else if (novoValor > 60) {
      console.log("ERRO: O tanque só suporta até 60 litros!");
    } else {
      this.#combustivel = novoValor;
      console.log(`Tanque atualizado para ${this.#combustivel}L com sucesso!`);
    }
  }

  correr() {
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
console.log(`Carro: ${carro01.marca}, Modelo: ${carro01.modelo}`);
carro01.correr();

console.log(`Tanque atual: ${carro01.combustivel} litros`);
carro01.combustivel = 60;
console.log(`Tanque após abastecer: ${carro01.combustivel}L`);