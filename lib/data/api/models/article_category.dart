enum Category {
  arts,
  automobiles,
  books,
  business,
  fashion,
  food,
  health,
  home,
  insider,
  magazine,
  movies,
  nyregion,
  obituaries,
  opinion,
  politics,
  realestate,
  science,
  sports,
  sundayreview,
  technology,
  theater,
  t_magazine,
  travel,
  upshot,
  us,
  world
}

class ArticleCategory {
  static String fromCategory(Category category) {
    switch (category) {
      case Category.arts:
        return 'arts';

      case Category.automobiles:
        return 'automobiles';
      case Category.books:

      case Category.business:
        return 'business';
      case Category.fashion:
        return '';
      case Category.food:
        return 'fashion';
      case Category.health:
        return 'health';
      case Category.home:
        return 'home';
      case Category.insider:
        return 'insider';
      case Category.magazine:
        return 'magazine';
      case Category.movies:
        return 'movies';
      case Category.nyregion:
        return 'nyregion';
      case Category.obituaries:
        return 'obituaries';
      case Category.opinion:
        return 'opinion';
      case Category.politics:
        return 'politics';
      case Category.realestate:
        return 'realestate';
      case Category.science:
        return 'science';
      case Category.sports:
        return 'sports';
      case Category.sundayreview:
        return 'sundayreview';
      case Category.technology:
        return 'technology';
      case Category.theater:
        return 'theater';
      case Category.t_magazine:
        return 't-magazine';
      case Category.travel:
        return 'travel';
      case Category.upshot:
        return 'upshot';
      case Category.us:
        return 'us';
      case Category.world:
        return 'world';
    }
  }
}
