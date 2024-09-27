# Kitty Creator (Criador de Gatinhos)

## Descrição
O projeto **Kitty Creator** permite a criação e gerenciamento de gatinhos digitais como NFTs (Non-Fungible Tokens) na Flow Blockchain, utilizando a linguagem Cadence. Cada gatinho tem características únicas armazenadas no contrato inteligente, como nome, cor e idade. Esse projeto simplificado demonstra como criar, armazenar e transferir NFTs, além de associar atributos personalizados a cada token.

## Funcionalidades
- Criação de gatinhos (NFTs) com atributos como nome, cor e idade.
- Armazenamento de gatinhos em uma conta de usuário.
- Transferência de gatinhos entre contas.
- Função para visualizar os atributos de cada gatinho.

## Estrutura do Código
- **`Kitty`**: Estrutura que define os atributos de um gatinho, como `id`, `nome`, `cor` e `idade`.
- **`totalSupply`**: Contador do número total de gatinhos criados.
- **`ownedKitties`**: Mapeamento entre endereços de usuários e os gatinhos que possuem.
- **`createKitty(owner: Address, name: String, color: String, age: UInt64)`**: Função para criar um novo gatinho.
- **`transferKitty(kittyID: UInt64, from: Address, to: Address)`**: Função para transferir a posse de um gatinho de uma conta para outra.
- **`getKittyDetails(kittyID: UInt64)`**: Retorna os atributos de um gatinho específico.

## Como Executar
1. Implemente o contrato na Flow Blockchain.
2. Utilize ferramentas como Flow CLI ou o playground da Flow para interagir com o contrato.
3. Crie novos gatinhos chamando a função `createKitty`, informando o nome, cor e idade do gatinho.
4. Transfira gatinhos entre contas usando a função `transferKitty`.
5. Verifique os atributos de um gatinho específico usando a função `getKittyDetails`.

## Requisitos
- Cadence e Flow CLI instalados.
- Conta ativa na Flow Blockchain.

## Melhorias Futuras
- Implementação de um sistema de cruzamento de gatinhos para gerar novos NFTs.
- Atributos visuais e gráficos para os gatinhos, como padrões de pelagem e raças.
- Implementação de características raras e geração procedural de atributos.
- Suporte para vender ou leiloar gatinhos no marketplace.
- Função para nomear e renomear os gatinhos após a criação.

## Licença
Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.

## Exemplos de uso

### Exemplo de Criação de Gatinho
```cadence
let newKitty = KittyCreator.createKitty(owner: 0x01, name: "Whiskers", color: "Gray", age: 2)
```
Neste exemplo, estamos criando um novo gatinho chamado "Whiskers", de cor "Gray" (cinza), com 2 anos de idade. O proprietário do gatinho será o endereço 0x01. Ao personalizar os atributos de nome, cor e idade, você pode criar diferentes gatinhos únicos.

### Exemplo de Transferência de Gatinho
```cadence
KittyCreator.transferKitty(kittyID: 1, from: 0x01, to: 0x02)
```
Neste exemplo, o gatinho com ID 1 está sendo transferido do proprietário 0x01 para um novo proprietário com o endereço 0x02. A função transferKitty permite a troca de gatinhos entre usuários, possibilitando transações ou transferências de NFTs na rede Flow.

### Exemplo de Visualização de Detalhes do Gatinho
```cadence
let kittyDetails = KittyCreator.getKittyDetails(kittyID: 1)
```
Aqui, estamos recuperando os detalhes do gatinho com o ID 1. A função getKittyDetails retorna informações como nome, cor e idade do gatinho, permitindo que os proprietários ou outros interessados visualizem suas características únicas.