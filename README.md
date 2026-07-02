# Truth Table Constructor (Enhanced Version)

[Português](#português) | [English](#english)

---

## Português

### Sobre o Projeto
Esta é uma versão modificada e aprimorada do **Truth Table Constructor**, um software educacional em Java que constrói tabelas-verdade para proposições lógicas. O projeto original foi desenvolvido por **Brian S. Borowski** ([https://www.brian-borowski.com/software/truth/](https://www.brian-borowski.com/software/truth/)).

Esta versão estendida traz contribuições históricas de tradução realizadas em ambiente acadêmico e melhorias modernas de usabilidade para suporte a caracteres Unicode.

### Histórico de Tradução (UFES - 2014)
Em 2014, como parte da disciplina de **Software Livre** na **Universidade Federal do Espírito Santo (UFES)**, os seguintes alunos realizaram o trabalho de tradução do software para o português sob a minha orientação:
* **Thawler Andrade**
* **Guilherme Vezula**
* **Danilo Boechat**

### Novas Implementações e Melhorias
Recentemente, eu implementei as atualizações mais recentes no código e adicionei novos recursos ao projeto:
1. **Suporte Expandido a Conectivos Unicode:** Adicionado o reconhecimento, mapeamento e renderização de múltiplos símbolos Unicode nativos para os operadores lógicos:
   * **Bicondicional:** `↔` e `⇔`
   * **Condicional:** `→` e `⇒`
   * **Conjunção (E):** `∧`
   * **Disjunção Exclusiva (XOR):** `⊻` e `⊕`
   * **Disjunção Inclusiva (OU):** `∨`
   * **Negação:** `¬`
2. **Atualização de Fonte:** A fonte padrão do sistema foi alterada para a [**Fira Code**](https://github.com/tonsky/FiraCode), garantindo o suporte completo, legibilidade e renderização adequada desses caracteres e ligaduras Unicode.
3. **Automação de Build:** O código foi reorganizado e limpo, centralizando as modificações em um arquivo `diff.patch` gerenciado automaticamente via `Makefile` e scripts de compilação.

### Como Executar o Programa

#### Opção 1: Baixar a Versão Pronta (Recomendado)
Se você deseja apenas utilizar o software sem precisar compilar o código fonte, acesse a aba **Releases** deste repositório, baixe o arquivo `TruthTable.jar` da **versão v3.0.8** (ou mais recente) e execute-o diretamente pelo terminal com o comando:
```bash
java -jar TruthTable.jar
```

#### Opção 2: Compilar o Código Fonte Manualmente

**Pré-requisitos:**
* Java JDK (versão 1.6 ou superior, compatível com versões modernas).
* Ferramenta `make` (opcional, para uso do Makefile).

**Usando o Makefile:**
Para aplicar o patch, copiar os recursos e gerar o arquivo `.jar`:
```bash
make
```
Para limpar os arquivos temporários e o patch aplicado:
```bash
make clean
```

**Usando o Script de Build:**
Caso não tenha o `make` instalado, você pode usar o script em Bash:
```bash
chmod +x build.sh
./build.sh
```

---

## English

### About the Project
This is a modified and enhanced version of the **Truth Table Constructor**, a Java-based educational software that generates truth tables for propositional logic statements. The original project was created by **Brian S. Borowski** ([https://www.brian-borowski.com/software/truth/](https://www.brian-borowski.com/software/truth/)).

This extended version features historical translation work done in an academic environment and modern usability improvements to support Unicode characters.

### Translation History (UFES - 2014)
In 2014, as part of the **Free Software (Software Livre)** course at the **Federal University of Espírito Santo (UFES)**, the following students translated the software into Portuguese under my supervision:
* **Thawler Andrade**
* **Guilherme Vezula**
* **Danilo Boechat**

### New Features and Improvements
Recently, I independently implemented the latest updates in the codebase and added new features to the project:
1. **Expanded Unicode Connectives Support:** Added recognition, mapping, and rendering for multiple native Unicode symbols representing logical operators:
   * **Biconditional:** `↔` and `⇔`
   * **Conditional:** `→` and `⇒`
   * **Conjunction (AND):** `∧`
   * **Exclusive Disjunction (XOR):** `⊻` and `⊕`
   * **Inclusive Disjunction (OR):** `∨`
   * **Negation:** `¬`
2. **Font Update:** The default system font was switched to [**Fira Code**](https://github.com/tonsky/FiraCode) to guarantee full support, high readability, and proper rendering of these Unicode characters and ligatures.
3. **Build Automation:** The codebase was reorganized and cleaned up, centralizing all changes into a `diff.patch` file automatically managed via `Makefile` and build scripts.

### How to Run the Application

#### Option 1: Downloading the Pre-built Version (Recommended)
If you just want to use the software without compiling the source code, head over to the **Releases** tab of this repository, download the `TruthTable.jar` file from **version v3.0.8** (or newer), and run it directly from your terminal using:
```bash
java -jar TruthTable.jar
```

#### Option 2: Building from Source Manually

**Prerequisites:**
* Java JDK (version 1.6 or higher, compatible with modern versions).
* `make` tool (optional, for using the Makefile).

**Using the Makefile:**
To apply the patch, copy the assets, and generate the `.jar` file:
```bash
make
```
To clean temporary files and revert the applied patch:
```bash
make clean
```

**Using the Build Script:**
If you do not have `make` installed, you can use the Bash script:
```bash
chmod +x build.sh
./build.sh
```
