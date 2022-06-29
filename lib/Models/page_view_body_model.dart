class PageViewBodyModel {
  final String _imgUrl, _title, _subTitle;

  const PageViewBodyModel({
    required String imgUrl,
    required String title,
    required String subTitle,
  })  : _imgUrl = imgUrl,
        _title = title,
        _subTitle = subTitle;

  get title => _title;

  get subTitle => _subTitle;

  String get imgUrl => _imgUrl;
}

List<PageViewBodyModel> pages = [
  PageViewBodyModel(
      imgUrl:
          'assets/images/third.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
  PageViewBodyModel(
      imgUrl: 'assets/images/first.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
  PageViewBodyModel(
      imgUrl: 'assets/images/second.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
];
