<details>
<summary>
<strong> Read this guide in English </strong>
</summary>
    <ul>
        <li><a href="./CONTRIBUTING.md"> English </a></li>
    </ul>

</details>

# Requisitos para contribuir

- Conhecimentos básicos de programação são obrigatórios.
- Capacidade de usar Git e GitHub.
- Algum conhecimento do Dart e como usar o Flutter é preferível para uma vantagem inicial.
- Habilidades de UI/UX Design são apreciáveis, mas não obrigatórias.
- Alguma ideia sobre API Requests ou vontade de aprender.

# Diretrizes gerais de codificação

Se você quiser adicionar uma funcionalidade ou corrigir um bug, ficarei feliz em aceitar pull requests! Peço apenas algumas coisas:

- Certifique-se de que seu código não contém erros do analisador, por exemplo:
  - O código está em conformidade com o modo forte.
  - O código está livre de erros ou avisos de lint.
- Formate o código com `Dart-Code.dart-code`.
- Escreva uma documentação útil.
- Se gostaria de fazer uma mudança maior/fundamental na base de código, por favor, envie um PR leve/ issue.

# 💥 Como Contribuir

- Veja nas [Issues](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues) existentes ou [crie uma nova issue](https://github.com/edilsonmatola/habitual-ecommerce-getx/problemas/novo/escolher)!
- [Forque o Repositório](https://github.com/edilsonmatola/habitual-ecommerce-getx/fork). De seguida, crie uma ramificação/ branch para qualquer issue na qual esteja trabalhando. Finalmente, faça um commit do seu trabalho.
- Crie uma **[Pull Request](https://github.com/edilsonmatola/habitual-ecommerce-getx/compare)** (_PR_), que será prontamente analisado e receberá sugestões de melhorias por mim.
- Adicione screenshots ou capturas de tela ao seu Pull Request para ajudar-me a entender os efeitos das mudanças propostas em seu PR.

## ⭐ COMO FAZER UM PULL REQUEST:

**1.** Comece fazendo um Fork no repositório [**habitual-ecommerce-getx**](https://github.com/edilsonmatola/habitual-ecommerce-getx). Clique em <a href="https://github.com/edilsonmatola/habitual-ecommerce-getx/fork"><img src="https://i.imgur.com/G4z1kEe.png" height="21 " width="21"></a> no canto superior direito.

**2.** Clone o seu fork do repositório:

```bash
git clone https://github.com/SEU_NOME_ DE_USUÁRIO_DO_GITHUB/habitual-ecommerce-getx
```

**3.** Navegue até o novo diretório do projeto:

```bash
cd habitual-ecommerce-getx
```

**4.** Execute o comando upstream:

```bash
git remote add upstream https://github.com/SEU_NOME_ DE_USUÁRIO_DO_GITHUB/habitual-ecommerce-getx.git
```

**5.** Check-out da ramificação/ branch main para a ramificação/ branch **development**.

```terminal
git checkout development
```

**6.** Crie uma ramificação/ branch de funcionalidades a partir da ramificação/ branch **development**!

```bash
git checkout -b NOME_DA_SUA_BRANCH
```

**7.** Sincronize seu fork ou seu repositório local com o repositório de origem:

- Em seu fork do repositório, clique em "Fetch upstream"
- Clique em "Fetch and merge"

### Como alternativa, a maneira Git CLI para sincronizar o seu fork do repositório com o repositório de origem:

```bash
git fetch upstream
```

```bash
git merge upstream/development
```

### [Github Docs](https://docs.github.com/en/github/collaborating-with-pull-requests/addressing-merge-conflicts/reresolution-a-merge-conflict-on-github) para sincronização

**8.** Faça suas alterações no código-fonte.

⚠️ **Actualize** os códigos de **Material e Cupertino**, se aplicável.

**9.** Prepare suas mudanças e faça o commit:

⚠️ **Certifique-se** de não executar os comandos `git add .` ou `git add *`. Em vez disso, organize suas alterações para cada arquivo/pasta

```bash
git add <NOME_DO_ARQUIVO>
```

```bash
git commit -m "<mensagem_de_commit>"
```

**10.** Envie seus commits locais para o repositório remoto:

```bash
git push origin NOME_DA_SUA_BRANCH
```

**10.** Crie um [Pull Request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request)!

⚠️ **Certifique-se** de enviar o Pull Request para a branch **development**.

## Lista de verificação de contribuição

Para tornar o processo de verificação de contribuição mais eficiente e organizado, criei um modelo/ template de solicitação de pull request. Poderá encontrá-lo na pasta [".github"](./.github/) abrindo o arquivo ["PULL_REQUEST_TEMPLATE.md"](./.github/pull_request_template.md).

Por favor, utilize esse modelo/ template como guia ao enviar sua solicitação de pull request e certifique-se de preencher todas as secções relevantes. Isso irá ajudar-me a entender as alterações feitas e como se encaixam no contexto maior do projecto.

Por favor, leia as [Diretrizes de Contribuição](#diretrizes-gerais-de-codificação) e o [Código de conduta](./CODE_OF_CONDUCT.md) antes de enviar sua solicitação, para garantir que a sua contribuição esteja alinhada com os nossos objectivos e valores.

**11.** **Parabéns!** Você fez sua primeira contribuição para [**habitual-ecommerce-getx**](https://github.com/edilsonmatola/habitual-ecommerce-getx/graphs/contribuintes)! 🙌🏼

# Guia de estilo para mensagens de commit do Git :memo:

**Como você pode agregar mais valor aos seus registros de contribuição:**

- Use o tempo presente. (Exemplo: "Adiciona funcionalidade" em vez de "Funcionalidade adicionada")
- Use o modo imperativo. (Exemplo: "Mover item para...", em vez de "Movi item para...")
- Limite a primeira linha (também chamada de Linha de Assunto) a _50 caracteres ou menos_.
- Capitalizar a linha do tema/ assunto.
- Separe o tema/ assunto do corpo com uma linha em branco.
- Não termine a linha de assunto com um ponto final.
- Compacte o corpo em _72 caracteres_.
- Use o corpo para explicar _o que_, _por que_, _vs_ e _como_.
- Referencie [Issues](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues) e [Pull Requests](https://github.com/edilsonmatola/habitual-ecommerce-getx/pulls) liberalmente após a primeira linha.

## 💥 Issues

Para discutir as mudanças, você está convidado a [abrir uma issue](https://github.com/edilsonmatola/habitual-ecommerce-getx/issues/new/choose) sobre o que você gostaria de contribuir. Melhorias são sempre encorajadas e apreciadas.

## Tudo de bom! 🥇

Sente-se e relaxe, você deu sua contribuição!

Para obter ajuda para começar a usar o Flutter, consulte a documentação online, que oferece tutoriais, examplos, orientação sobre desenvolvimento para dispositivos móveis e uma referência completa da API.
