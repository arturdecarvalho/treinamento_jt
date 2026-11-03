const readline = require("node:readline/promises");
const { stdin: input, stdout: output } = require("node:process");

const LIMITE_CHUVA = 50;

// Repete até o usuário digitar um número válido entre 0 e 100
async function lerChance(rl) {
  while (true) {
    const resposta = await rl.question("Digite a chance de chuva (em %): ");
    const chance = Number(resposta.replace(",", "."));

    if (resposta.trim() !== "" && Number.isFinite(chance) && chance >= 0 && chance <= 100) {
      return chance;
    }
    console.log("Valor inválido. Digite um número entre 0 e 100.");
  }
}

async function main() {
  const rl = readline.createInterface({ input, output });
  let continuar = true;

  while (continuar) {
    const chance = await lerChance(rl);

    if (chance > LIMITE_CHUVA) {
      console.log("Leve o guarda-chuva!");
    } else {
      console.log("Não precisa levar.");
    }

    const outra = await rl.question("Consultar novamente? (s/n): ");
    continuar = outra.trim().toLowerCase() === "s";
  }

  rl.close();
}

main();