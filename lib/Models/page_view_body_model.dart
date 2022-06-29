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
          'assets/images/—Pngtree—rising staple price inflation_7496031.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
  PageViewBodyModel(
      imgUrl: 'assets/images/m2H7K9N4Z5N4m2d3.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
  PageViewBodyModel(
      imgUrl: 'assets/images/—Pngtree—buy food for iftar_7426558.png',
      title: 'Buy Any Food from your favorite restaurant',
      subTitle: 'We are constantly adding your favorite resturant '
          'with your favourite food and your are will be selected by default'),
];
