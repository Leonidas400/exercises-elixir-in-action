defmodule ReadFiles do
  def lines_lengths!(path) do
    # 1. A matéria-prima: O caminho do arquivo (ex: "meu_arquivo.txt")
    path
    # 2. Pega o caminho, abre o arquivo e lê todo o seu conteúdo.
    #    Resultado: um texto único e gigante.
    |> File.read!()
    # 3. Pega o texto gigante e o "corta" em cada quebra de linha ("\n").
    #    Resultado: uma lista de linhas (ex: ["linha um", "linha dois", "fim"])
    |> String.split("\n", trim: true)
    # 4. "Transforma" cada linha da lista.
    #    &String.length/1 diz: "calcule o comprimento de cada linha".
    #    Resultado: uma lista de números (ex: [8, 10, 3])
    |> Enum.map(&String.length/1)
  end

  def large_lines!(path) do

    # 1. Matéria-prima: O caminho do arquivo
    path
    # 2. Lê o arquivo e o transforma em um texto gigante.
    |> File.read!()
    # 3. Quebra o texto gigante em uma lista de linhas.
    |> String.split("\n", trim: true)
    # 4. "Reduz" a lista inteira a um único valor. Pense nisso como um campeonato.
    #    Começamos com um "campeão" inicial: 0 (o 'current_max').
    |> Enum.reduce(0, fn line, current_max ->
            # Para cada linha, calculamos seu comprimento.
            lines_length = String.length(line)

            # Se o comprimento desta linha for maior que o "campeão" atual...
            if lines_length > current_max do
              # ...ela se torna o novo "campeão".
              lines_length
            else
              # ...senão, o "campeão" anterior continua.
              current_max
            end
      end)
  end

  def longest_line!(path) do
    # 1. Matéria-prima: O caminho do arquivo
    path
    # 2. Lê o arquivo e o transforma em um texto gigante.
    |> File.read!()
    # 3. Quebra o texto gigante em uma lista de linhas.
    |> String.split("\n", trim: true)
    # 4. "Encontre o maior por..."
    #    Esta ferramenta é muito inteligente. Ela olha todas as linhas e pergunta:
    #    "Qual de vocês é a maior, usando o 'comprimento' como critério?"
    #    Ela então retorna a linha inteira que ganhou.
    |> Enum.max_by(&String.length/1)
  end

  def words_per_line!(path) do
    # 1. Matéria-prima: O caminho do arquivo
    path
    # 2. Lê o arquivo e o transforma em um texto gigante.
    |> File.read!()
    # 3. Quebra o texto gigante em uma lista de linhas.
    |> String.split("\n", trim: true)
    # 4. "Transforma" cada linha...
    |> Enum.map(fn line ->
          # ...em sua própria mini-linha de montagem:
          # Pega a linha (ex: "ola tudo bem")
          line
          # Quebra a linha em palavras (por espaços).
          # Resultado: ["ola", "tudo", "bem"]
          |> String.split()
          # Conta quantos itens (palavras) existem na lista.
          # Resultado: 3
          |> length()
        end)
  end

end
