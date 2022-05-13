import 'package:scania/src/app/model/produto_servico.dart';

class ProdutosServicos {
  static final List<ProdutoServico> produtosServicos = [
    const ProdutoServico(
      id: '1',
      nome: 'Caminhões',
      avaliacao: '4.1/5.0',
      setor: 'Automobilístico',
      descricao:
          'Fabricamos caminhões que constroem negócios. Não é uma questão apenas de desempenho, confiabilidade e economia; tem a ver com o conhecimento que a Scania tem de seus negócios. Os caminhões Scania podem ser tudo, menos padrão. Com seu famoso sistema modular, eles oferecem a possibilidade de construir um caminhão para o único negócio que importa – o seu.',
      imagem: 'assets/images/products/truck.png',
      tipo: 'Produtos',
    ),
    const ProdutoServico(
      id: '2',
      nome: 'Ônibus',
      avaliacao: '4.5/5.0',
      setor: 'Automobilístico',
      descricao:
          'Os ônibus Scania são inspirados pelas pessoas que neles viajam e por aqueles que os dirigem. Nos dedicamos à criação de veículos que oferecem os melhores resultados possíveis, tanto para os passageiros, satisfeitos com o conforto de seu trajeto diário, quanto para os donos da frota, com soluções rentáveis para o seu negócio, e também sustentáveis para o planeta.',
      imagem: 'assets/images/products/bus.png',
      tipo: 'Produtos',
    ),
    const ProdutoServico(
      id: '3',
      nome: 'Peças',
      setor: 'Engenharia Mecânica',
      avaliacao: '4.9/5.0',
      descricao:
          'Elas são projetadas para desempenho máximo, resistência, economia de combustível e segurança. Nossos especialistas identificarão e organizarão rapidamente os itens necessários. E nossa rede global de logística garante que todas as peças Scania estejam disponíveis para rápida entrega.',
      imagem: 'assets/images/products/screwdriver.png',
      tipo: 'Produtos',
    ),
    const ProdutoServico(
      id: '4',
      nome: 'Soluções',
      setor: 'Atendimento ao Consumidor',
      avaliacao: '4.2/5.0',
      descricao:
          'Usados como fonte primária de energia em locais remotos e locais de entretenimento ou como energia de reserva em operações exigentes e funções sociais críticas, os sistemas de energia Scania fornecem energia sem problemas quando e onde for necessário. Sua absoluta confiabilidade, excelente eficiência de combustível e resposta imediata significam que são altamente apreciados em todo o mundo.',
      imagem: 'assets/images/products/gear.png',
      tipo: 'Serviços',
    ),
    const ProdutoServico(
      id: '5',
      nome: 'Ecolution',
      setor: 'Engenharia Ambiental',
      avaliacao: '4.7/5.0',
      descricao:
          'O Ecolution é uma parceria personalizada entre sua empresa e a Scania, com o único propósito de aumentar a eficiência de combustível da sua frota. Um objetivo alcançado e mantido em longo prazo por treinamento contínuo de motoristas, acompanhamento digital e otimização de veículo e frota. Naturalmente, complementado por todos os nossos serviços e ferramentas que podem ajudar sua operação a alcançar seus objetivos de sustentabilidade e aumentar suas margens.',
      imagem: 'assets/images/products/leaf.png',
      tipo: 'Serviços',
    )
  ];

  static ProdutoServico getProductServiceById(id) {
    return produtosServicos.where((ps) => ps.id == id).first;
  }
}
