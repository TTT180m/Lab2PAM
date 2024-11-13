import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: const NotificationScreen(),
      ),
    );
  }
}
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {
  bool _showRecommendations = false;
  bool _showAddresses = false;
  String _selectedAddress = '14 Donnerville Street, England';
  List<bool> _isSelected = [true, false, false, false];
  OverlayEntry? _overlayEntry;
  bool _showNotificationBadge = true;
  List<Wine> wines = [];
  @override
  void initState() {
    super.initState();
    wines = [
      Wine( //Red1
        name: "Merlot",
        type: "Red",
        country: "France",
        imageUrl: "https://fratelliwines.in/cdn/shop/products/classic1.jpg?v=1657956216",
        price: 12.99,
        rating: 4.2,
        volume: 850,
      ),
      Wine( //Red2
        name: "Cabernet Sauvignon",
        type: "Red",
        country: "France",
        imageUrl: "https://luigibosca.com/wp-content/uploads/2022/12/Entendiendo-al-Cabernet-Sauvignon-1.jpg",
        price: 19.99,
        rating: 5,
        volume: 750,
      ),
      Wine( //Red3
        name: "Pinot Noir",
        type: "Red",
        country: "France",
        imageUrl: "https://sansushi.md/wp-content/uploads/2022/09/33de73e9-2004-464a-9b18-8378ff7f5af8.jpg",
        price: 25.99,
        rating: 4.9,
        volume: 750,
      ),
      Wine(//white3
        name: "Feteasca Albă",
        type: "White",
        country: "Moldova",
        imageUrl: "https://winestatistics.com/wp-content/uploads/2023/03/davino_albavalahica_feteascaalba_2020.png",
        price: 12.99,
        rating: 4.9,
        volume: 750,
      ),
      Wine(//white1
        name: "Chardonnay",
        type: "White",
        country: "France",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWu_nx3XBMA6R-nl7Kvq-l1n-leamI77hesg&s",
        price: 35.99,
        rating: 3.9,
        volume: 600,
      ),
      Wine(//white2
        name: "Pinot Grigio",
        type: "White",
        country: "Italy",
        imageUrl: "https://vartely.md/wp-content/uploads/2016/11/pinot-grigio_1140x1440-min-1.jpg",
        price: 19.99,
        rating: 4.5,
        volume: 800,
      ),
      Wine(//rose2
        name: "Bardolino Chiaretto",
        type: "Rose",
        country: "Italy",
        imageUrl: "https://cdn.ct-static.com/labels/26a768a0-63b8-4160-a785-e9a3a1949afc.jpg",
        price: 12.99,
        rating: 4.0,
        volume: 753,
      ),
      Wine(//rose1
        name: "Rosé d’Anjou",
        type: "Rose",
        country: "France",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkAAL4ZkaeZdCpmHj2TOU4LWxy0-_gJXNk4g&s",
        price: 9.99,
        rating: 4.1,
        volume: 770,
      ),
      Wine(//rose3
        name: "Negru de Purcari Rosé",
        type: "Rose",
        country: "Moldova",
        imageUrl: "https://totalblue.ro/wp-content/uploads/2022/04/purcari-vin-sec-roz-totalblue3.jpg",
        price: 17.99,
        rating: 4.3,
        volume: 750,
      ),
      Wine(//Dry1
        name: "Chablis",
        type: "White",
        country: "France",
        imageUrl: "https://rsp-wine.com/cdn/shop/files/Chablis-2022.jpg?v=1716196667&width=480",
        price: 24.99,
        rating: 3.9,
        volume: 710,
      ),
      Wine(//Dry2
        name: "Soave",
        type: "White",
        country: "France",
        imageUrl: "https://i0.wp.com/winingwithmel.com/wp-content/uploads/2022/06/wp-1654886329965.jpg?resize=676%2C901&ssl=1",
        price: 28.99,
        rating: 5.0,
        volume: 940,
      ),
      Wine(//Dry3
        name: "Barolo",
        type: "Red",
        country: "Italy",
        imageUrl: "https://winestatistics.com/wp-content/uploads/2023/01/prunotto_barolo_2017.png",
        price: 30.99,
        rating: 4.9,
        volume: 950,
      ),
      Wine(//sweet1
        name: "Sauternes",
        type: "White",
        country: "France",
        imageUrl: "https://blog.bbr.com/wp-content/uploads/2021/01/Sauternes-blog-image-1024x835.jpg",
        price: 25.99,
        rating: 4.6,
        volume: 950,
      ),
      Wine(//sweet2
        name: "Moscato d'Asti",
        type: "Rose",
        country: "Italy",
        imageUrl: "https://www.lokiwine.co.uk/wp-content/uploads/2023/02/Contero-Moscato-d_Asti.jpg",
        price: 26.99,
        rating: 4.8,
        volume: 755,
      ),
      Wine(//sweet3
        name: "Vin de Cotnari",
        type: "White",
        country: "White",
        imageUrl: "https://upload.wikimedia.org/wikipedia/commons/3/32/Grasa_de_Cotnari.jpg",
        price: 19.99,
        rating: 4.8,
        volume: 650,
      ),
      Wine(//france1
        name: "Châteauneuf-du-Pape",
        type: "Red",
        country: "France",
        imageUrl: "https://tapasfusion.com/wp-content/uploads/sites/2/2022/01/chateauneuf-du-pape.jpg",
        price: 21.99,
        rating: 4.6,
        volume: 790,
      ),
      Wine(//france2
        name: "Sancerre",
        type: "White",
        country: "France",
        imageUrl: "https://www.tivoliwines.co.uk/media/catalog/product/cache/55f0711ac0ad99fe2f1dcaacbdcf4b81/n/a/natter_sancerre_square.jpg",
        price: 17.99,
        rating: 4.2,
        volume: 750,
      ),
      Wine(//France3
        name: "Côtes de Provence Rosé",
        type: "Rose",
        country: "France",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpfwuO5jxUVXfA6PBn72JLdXph1htVzm8ILA&s",
        price: 12.99,
        rating: 4.0,
        volume: 950,
      ),
      Wine(//Italy1
        name: "CVerdicchio dei Castelli di Jesi",
        type: "White",
        country: "Italy",
        imageUrl: "https://shop.linastores.co.uk/cdn/shop/products/Products-22_1024x1024.jpg?v=1665590635",
        price: 39.99,
        rating: 4.9,
        volume: 960,
      ),
      Wine(//italy2
        name: "Cerasuolo d'Abruzzo",
        type: "Rose",
        country: "Italy",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh06Y7G-s28h5Fr_0XSalwXYIkXxNhu5Mbeg&s",
        price: 15.99,
        rating: 4.1,
        volume: 795,
      ),
      Wine(//italy3
        name: "Primitivo di Manduria",
        type: "Red",
        country: "Italy",
        imageUrl: "https://www.scamuzzivini.it/wp-content/uploads/2023/03/Primitivo-di-Manduria-Lirica-Magnum.jpg",
        price: 19.99,
        rating: 4.8,
        volume: 970,
      ),
      Wine(//md1
        name: "Rara Neagră",
        type: "Rose",
        country: "Moldova",
        imageUrl: "https://winestatistics.com/wp-content/uploads/2020/04/pripa_rara_neagra_2017.png",
        price: 13.99,
        rating: 4.8,
        volume: 870,
      ),
      Wine(//md2
        name: "Sauvignon Blanc",
        type: "White",
        country: "Moldova",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdiwTPc4uibw0qaEcspXAxTLGjpV6Dwd0wzg&s",
        price: 23.99,
        rating: 4.7,
        volume: 560,
      ),
      Wine(//md3
        name: "Feteasca Neagră",
        type: "Rose",
        country: "Moldova",
        imageUrl: "https://winestatistics.com/wp-content/uploads/2021/11/purcari_feteascaneagra_de_purcari_2019.png",
        price: 13.99,
        rating: 4.4,
        volume: 725,
      ),
      Wine(//cabernet1
        name: "Cabernet Franc",
        type: "White",
        country: "France",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO_sLYLWU9rV57A-J9SwHJQ0Z4UifD0TaFzQ&s",
        price: 15.99,
        rating: 5.0,
        volume: 655,
      ),
      Wine(//cabernet2
        name: "Cabernet Sauvignon Rosé",
        type: "Rose",
        country: "France",
        imageUrl: "https://whitefoxwines.co.uk/wp-content/uploads/2020/09/PPEOchaRose-scaled.jpg",
        price: 41.99,
        rating: 4.9,
        volume: 1000,
      ),
      Wine(//cabernet3
        name: "Cabernet Sauvignon Moldavian",
        type: "Rose",
        country: "Moldova",
        imageUrl: "https://vartely.md/wp-content/uploads/2016/11/cab_1140x1440-min-1.jpg",
        price: 17.99,
        rating: 4.3,
        volume: 750,
      ),
      Wine(//marlot1
        name: "Merlot IGT",
        type: "Red",
        country: "Italy",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShogcTvHtgbS4fTjfqNzeRlTMHP4aA8TEQYQ&s",
        price: 29.99,
        rating: 4.6,
        volume: 1150,
      ),
      Wine(//merlot2
        name: "Château La Vieille Cure",
        type: "Red",
        country: "France",
        imageUrl: "https://wainscottmain.com/cdn/shop/products/image_f804eca8-703f-4da9-b641-252c5e7ea196.jpg?v=1567530479",
        price: 32.99,
        rating: 4.9,
        volume: 975,
      ),
      Wine(//merlot3
        name: "Merlot \"Pavlov\"",
        type: "Red",
        country: "Moldova",
        imageUrl: "https://www.vinotekauzamku.cz/assets/Produkty/291047.JPG",
        price: 38.99,
        rating: 5.0,
        volume: 635,
      ),
      Wine(//airen1
        name: "Aglianico del Vulture",
        type: "Red",
        country: "Italy",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSffCmagAqkmx0dSENPPBqRhgfQokTAO-TeGw&s",
        price: 40.99,
        rating: 4.9,
        volume: 895,
      ),
      Wine(//airen2
        name: "Aglianico IGT",
        type: "Red",
        country: "Italy",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ_dUoV_v3aYPcxMZq_GBo6hYWTt_eo0SRqA&s",
        price: 39.99,
        rating: 4.3,
        volume: 715,
      ),
      Wine(//airen3
        name: "Aglianico \"Cricova\"",
        type: "Red",
        country: "Moldova",
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4LmMDIZsVEoNJzcU5MF14X5pmNFmDRENQEQ&s",
        price: 17.99,
        rating: 5.0,
        volume: 1150,
      ),
    ];
  }
  Map<String, bool> _isWineSelected = {
    'Red wines': false,
    'White wines': false,
    'Rosé wines': false,
    'Dry': false,
    'Sweet': false,
    'France': false,
    'Italy': false,
    'Moldova': false,
    'Cabernet': false,
    'Marlot': false,
    'Airen': false,
  };
  void _toggleRecommendations() {
    setState(() {
      _showRecommendations = !_showRecommendations;
      _showAddresses = false;
      _showNotificationBadge = false;
    });
    _updateOverlay();
  }
  void _toggleAddresses() {
    setState(() {
      _showAddresses = !_showAddresses;
      if (_showAddresses) _showRecommendations = false;
    });
    _updateOverlay();
  }
  void _selectAddress(String address) {
    setState(() {
      _selectedAddress = address;
      _showAddresses = false;
    });
    _updateOverlay();
  }
  void _updateOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = (_showRecommendations || _showAddresses) ? _createOverlayEntry() : null;
    if (_overlayEntry != null) {
      Overlay.of(context)!.insert(_overlayEntry!);
    }
  }
  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            if (_showRecommendations)
              _buildOverlay(null, _toggleRecommendations, [
                '1. Cabernet Sauvignon for a bold flavor.',
                '2. Chardonnay for a light experience.',
                '3. Merlot for an easy-drinking wine.',
              ]),
            if (_showAddresses)
              _buildOverlay(null, _toggleAddresses, [
                '14 Donnerville Street, England',
                '93 North Hill Road, Canada',
                '43 Elm Street, USA',
                '124 Maple Avenue, Australia',
                '68 Pine Road, Germany',
                '94 Birch Boulevard, France',
              ]),
          ],
        );
      },
    );
  }
  Widget _buildOverlay(String? title, VoidCallback onClose, [List<String>? addresses]) {
    return Positioned(
      top: 100,
      left: _showAddresses ? 20 : null,
      right: _showRecommendations ? 20 : null,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  IconButton(icon: const Icon(Icons.close), onPressed: onClose),
                ],
              ),
            if (addresses != null)
              ...addresses.map((address) => GestureDetector(
                onTap: () => _selectAddress(address),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    address,
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              )),
          ],
        ),
      ),
    );
  }
  Widget _buildOverlayContainer(Widget child) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: child,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            _buildNotificationAndAddressRow(),
            SizedBox(height: 20),
            _buildSearchBar(),
            SizedBox(height: 20),
            _buildSectionTitle('Shop wines by'),
            SizedBox(height: 20),
            _buildButtonRow(),
            SizedBox(height: 20),
            _buildWineSquares(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Widget _buildNotificationAndAddressRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: _toggleAddresses,
          child: _buildOverlayContainer(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Selected Address', style: TextStyle(color: Colors.white, fontSize: 12)),
                Text(_selectedAddress, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
        _buildCircleButton(
          onPressed: _toggleRecommendations,
          icon: Icons.notifications,
          notificationCount: '3',
        ),
      ],
    );
  }
  Widget _buildWineCard(Wine wine) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 290,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Image.network(wine.imageUrl, height: 290, width: 140, fit: BoxFit.cover),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(wine.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Type: ${wine.type}'),
                  Text('Country: ${wine.country}'),
                  const Spacer(),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text('Price: \$${wine.price}'),
                        Text('Rating: ${wine.rating}'),
                        Text('Volume: ${wine.volume} ml'),
                        ElevatedButton(onPressed: () {}, child: const Text('Favorite <3')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSearchBar() {
    return Positioned(
      top: 110,
      left: 20,
      right: 20,
      child: const SearchBar(),
    );
  }
  Widget _buildSectionTitle(String title) {
    return Positioned(
      top: 170,
      left: 20,
      right: 20,
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
  Widget _buildButtonRow() {
    return Positioned(
      top: 210,
      left: 20,
      right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: ['Type', 'Style', 'Countries', 'Grape'].asMap().entries.map((entry) {
          int index = entry.key;
          String title = entry.value;
          return GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = List.generate(4, (i) => i == index);
              });
            },
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: _isSelected[index] ? Colors.pink[100] : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2))],
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: _isSelected[index] ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
  Widget _buildWineSquares() {
    return Positioned(
      top: 320,
      left: 20,
      right: 20,
      child: Column(
        children: [
          if (_isSelected[0]) _buildWineSquareRow([
            _buildWineSquare('Red wines', 'https://winery.ph/cdn/shop/articles/WPH_Blog_Hero_Graphics_1_1500x901.jpg'),
            _buildWineSquare('White wines', 'https://www.wineenthusiast.com/wp-content/uploads/2023/05/White_Wine_Getty_HERO_1920x1280.jpg'),
            _buildWineSquare('Rosé wines', 'https://images.ctfassets.net/t3zrnw7spzsy/1G0KTDJEPYrCNfspfluYKJ/f6f26ff08f496b2febb6f61715905278/Sweet_rose_wine_-_two_glasses_of_rose_wine_on_a_table_-_image.jpg?w=1600&h=899&fl=progressive&q=80&fm=jpg'),
          ]),
          if (_isSelected[1]) _buildWineSquareRow([
            _buildWineSquare('Dry', 'https://minuman.com/cdn/shop/articles/Breaking-the-Misconceptions-of-Dry-Wine.jpg'),
            _buildWineSquare('Sweet', 'https://beautyeval.com/wp-content/uploads/2023/08/Dessert_Wines_With_Fresh_Grapes.jpg'),
          ]),
          if (_isSelected[2]) _buildWineSquareRow([
            _buildWineSquare('France', 'https://img.freepik.com/premium-photo/red-wine-national-french-flag-background-famous-french-drink-best-red-wine-french-wine-menu-european-tourism-wine-france_99272-7620.jpg'),
            _buildWineSquare('Italy', 'https://img.freepik.com/premium-photo/red-wine-national-italy-flag-background-famous-italian-drink-best-red-wine-italian-wine-menu-european-tourism-wine-italy_99272-7622.jpg'),
            _buildWineSquare('Moldova', 'https://i.simpalsmedia.com/point.md/news/900x900/35d78fd7ab6cc81b3d33b7f81c46d0a3.jpg'),
          ]),
          if (_isSelected[3]) _buildWineSquareRow([
            _buildWineSquare('Cabernet', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOSdMaj9QXY_yRMAHLPuSltB0VY5KAGd1QDm-7CG1zVkQyh_GEfRUQchwkwyHcTMtFjFw&usqp=CAU'),
            _buildWineSquare('Marlot', 'https://chizay.com/wp-content/uploads/2018/08/Merlot_2019-3.jpg'),
            _buildWineSquare('Airen', 'https://129441991.cdn6.editmysite.com/uploads/1/2/9/4/129441991/s270581222302716153_p2615_i2_w441.jpeg'),
          ]),
          if (_isWineSelected['Red wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[0]),
                _buildWineCard(wines[1]),
                _buildWineCard(wines[2]),
              ],
            ),
          if (_isWineSelected['White wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[3]),
                _buildWineCard(wines[4]),
                _buildWineCard(wines[5]),
              ],
            ),
          if (_isWineSelected['Rosé wines'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[6]),
                _buildWineCard(wines[7]),
                _buildWineCard(wines[8]),
              ],
            ),
          if (_isWineSelected['Dry'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[9]),
                _buildWineCard(wines[10]),
                _buildWineCard(wines[11]),
              ],
            ),
          if (_isWineSelected['Sweet'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[12]),
                _buildWineCard(wines[13]),
                _buildWineCard(wines[14]),
              ],
            ),
          if (_isWineSelected['France'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[15]),
                _buildWineCard(wines[16]),
                _buildWineCard(wines[17]),
              ],
            ),
          if (_isWineSelected['Italy'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[18]),
                _buildWineCard(wines[19]),
                _buildWineCard(wines[20]),
              ],
            ),
          if (_isWineSelected['Moldova'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[21]),
                _buildWineCard(wines[22]),
                _buildWineCard(wines[23]),
              ],
            ),
          if (_isWineSelected['Cabernet'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[24]),
                _buildWineCard(wines[25]),
                _buildWineCard(wines[26]),
              ],
            ),
          if (_isWineSelected['Marlot'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[27]),
                _buildWineCard(wines[28]),
                _buildWineCard(wines[29]),
              ],
            ),
          if (_isWineSelected['Airen'] ?? false)
            Column(
              children: [
                _buildWineCard(wines[30]),
                _buildWineCard(wines[31]),
                _buildWineCard(wines[32]),
              ],
            ),
        ],
      ),
    );
  }
  Widget _buildWineSquare(String title, String imageUrl) {
    bool isSelected = _isWineSelected[title] ?? false;

    return GestureDetector(
      onTap: () {
        setState(() {
          _isWineSelected.updateAll((key, value) => false);
          _isWineSelected[title] = true;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 140,
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink[100] : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 100, width: 100, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildWineSquareRow(List<Widget> wineSquares) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: wineSquares,
    );
  }
  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2)),
      ],
    );
  }
  Widget _buildCircleButton({
    required VoidCallback onPressed,
    required IconData icon,
    String? notificationCount,
  }) {
    return Stack(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        if (_showNotificationBadge && notificationCount != null)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Center(
                child: Text(
                  notificationCount,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: const Offset(0, 2)),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
class Wine {
  final String imageUrl;
  final String name;
  final String type;
  final String country;
  final double price;
  final double rating;
  final int volume;
  Wine({
    required this.imageUrl,
    required this.name,
    required this.type,
    required this.country,
    required this.price,
    required this.rating,
    required this.volume,
  });
}