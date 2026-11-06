import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// ---------- Warna 
const Color kCream = Color(0xFFF8F3EF);
const Color kOrange = Color(0xFFE0824A);
const Color kNavy = Color(0xFF1F2A5C);
const Color kInk = Color(0xFF111111);
const Color kMuted = Color(0xFF8C8782);
const Color kLine = Color(0xFFECE5DF);
const ScrollPhysics kScrollPhysics = ClampingScrollPhysics();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogja',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kOrange,
          primary: kOrange,
          surface: Colors.white,
        ),
        fontFamily: 'Roboto',
      ),
      home: const MainScreen(),
    );
  }
}

// ---------- Model & data 
class TourismPlace {
  final String name;
  final String location;
  final String description;
  final String openDays;
  final String openTime;
  final String ticketPrice;
  final String imageAsset;
  final List<String> gallery;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.gallery,
  });
}

final List<TourismPlace> tourismPlaceList = [
  TourismPlace(
    name: 'Candi Prambanan',
    location: 'Jogja',
    description: 'Candi Prambanan berada di jalur utama yang menghubungkan Kota Yogyakarta dan Solo, tepatnya di Jalan Raya Solo - Jogja Km 16, perbatasan antara Kabupaten Sleman, DIY, dan Kabupaten Klaten, Jawa Tengah. Lokasinya yang berada tepat di tepi jalan raya nasional membuat candi ini sangat strategis dan mudah dijangkau, baik menggunakan kendaraan pribadi, bus pariwisata, maupun transportasi umum seperti KRL Jogja-Solo dan Trans Jogja.',
    openDays: 'Open Everyday',
    openTime: '06.30 - 17:30',
    ticketPrice: 'Rp 25.000 - Rp 400.000',
    imageAsset: 'assets/candi.jpg',
    gallery: ['assets/candi1.jpg', 'assets/candi2.jpg', 'assets/candi3.jpg'],
  ),
  TourismPlace(
    name: 'Kampung Wisata Taman Sari',
    location: 'Kota Yogyakarta',
    description: 'Kampung Wisata Taman Sari berada di dalam kawasan benteng Keraton Yogyakarta, tepatnya di Jalan Tamanan, Kelurahan Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta. Lokasinya sangat strategis, terletak sekitar 2 kilometer di sebelah selatan Keraton Yogyakarta dan berada sangat dekat dengan Alun-Alun Kidul (Alkid). Berada di pusat kota, destinasi ini sangat mudah diakses menggunakan kendaraan pribadi, becak motor, maupun transportasi daring.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 15:00',
    ticketPrice: 'Rp 15.000 - Rp 25.000',
    imageAsset: 'assets/kampung.jpg',
    gallery: [
      'assets/kampung1.jpeg',
      'assets/kampung2.jpg',
      'assets/kampung3.jpeg',
    ],
  ),
  TourismPlace(
    name: 'Vredeburg Fort Museum',
    location: 'Kota Yogyakarta',
    description: 'Museum Benteng Vredeburg berada di pusat Kota Yogyakarta, tepatnya di Jalan Margo Mulyo No. 6, Kelurahan Ngupasan, Kecamatan Gondomanan, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55122. Lokasinya berada tepat di jalur utama ujung selatan kawasan Jalan Malioboro, berhadapan langsung dengan Gedung Agung Yogyakarta (Istana Kepresidenan) dan berdampingan dengan area Titik Nol Kilometer Yogyakarta. Posisi yang sangat strategis ini membuatnya sangat mudah diakses dengan berjalan kaki dari Malioboro, menggunakan bentor, bus Trans Jogja, maupun kendaraan pribadi/daring.',
    openDays: 'Selasa - Minggu',
    openTime: '08:00 - 20:00',
    ticketPrice: 'Rp 10.000 - Rp 25.000',
    imageAsset: 'assets/museum.jpg',
    gallery: ['assets/museum1.jpg', 'assets/museum2.jpg', 'assets/museum3.jpg'],
  ),
  TourismPlace(
    name: 'Heha Sky View',
    location: 'Kota Yogyakarta',
    description: 'HeHa Sky View berada di kawasan perbukitan Patuk, Gunungkidul, tepatnya di Jalan Dlingo-Patuk No. 2, Desa Patuk, Kecamatan Patuk, Kabupaten Gunungkidul, Daerah Istimewa Yogyakarta 55862. Berjarak sekitar 18 kilometer atau 40–45 menit berkendara dari pusat Kota Yogyakarta, lokasinya berada di jalur utama menuju kawasan wisata Gunungkidul dan terletak dekat dengan area wisata panorama Bukit Bintang',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    ticketPrice: 'Rp 20.000 - Rp 30.000',
    imageAsset: 'assets/heha.jpg',
    gallery: ['assets/heha1.jpg', 'assets/heha3.jpg', 'assets/heha3.jpeg'],
  ),
  TourismPlace(
    name: 'Gembira Loka Zoo',
    location: 'Kota Yogyakarta',
    description: 'Gembira Loka Zoo berada di kawasan bagian timur Kota Yogyakarta, tepatnya di Jalan Kebun Raya No. 2, Rejowinangun, Kecamatan Kotagede, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55171. Lokasinya berada di tepi aliran Sungai Gajahwong dan diapit dua akses masuk utama, yaitu Pintu A di Jalan Kebun Raya serta Pintu B di Jalan Veteran. Berada dekat dari pusat kota dan kawasan bersejarah Kotagede, tempat ini sangat mudah diakses menggunakan kendaraan pribadi, bus pariwisata, maupun transportasi daring',
    openDays: 'Open Everyday',
    openTime: '08:00 - 16:00',
    ticketPrice: 'Rp 70.000 - Rp 85.000',
    imageAsset: 'assets/gembiraloka.jpg',
    gallery: [
      'assets/gembira1.jpg',
      'assets/gembira2.jpg',
      'assets/gembira3.jpeg',
    ],
  ),
];

// ---------- Helper tampilan ----------
Widget _wrap(Widget child) => Center(
  child: ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 1200),
    child: child,
  ),
);

Widget _scriptText(String text, {double size = 22}) => Text(
  text,
  style: TextStyle(
    fontSize: size,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w300,
    color: kOrange,
  ),
);

Widget _brokenImage(double? w, double? h) => Container(
  width: w,
  height: h,
  color: kLine,
  child: const Icon(Icons.broken_image, color: kMuted),
);

// ---------- Halaman utama
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _queryCtrl = TextEditingController();
  final _listKey = GlobalKey();
  String _query = '';
  String _location = 'Semua';
  DateTime? _date;
  int _guests = 1;

  @override
  void dispose() {
    _queryCtrl.dispose();
    super.dispose();
  }

  List<String> get _locations => [
    'Semua',
    ...tourismPlaceList.map((e) => e.location).toSet(),
  ];

  List<TourismPlace> get _filtered => tourismPlaceList.where((p) {
    final q = _query.toLowerCase();
    final okQuery =
        q.isEmpty ||
        p.name.toLowerCase().contains(q) ||
        p.location.toLowerCase().contains(q);
    final okLocation = _location == 'Semua' || p.location == _location;
    return okQuery && okLocation;
  }).toList();

  void _scrollToList() {
    final ctx = _listKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _search() {
    setState(() => _query = _queryCtrl.text.trim());
    FocusScope.of(context).unfocus();
    _scrollToList();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _date ?? now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );
    if (picked != null) setState(() => _date = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, c) {
          final wide = c.maxWidth >= 860;
          return SingleChildScrollView(
            physics: kScrollPhysics,
            child: Column(
              children: [
                _navBar(wide),
                _hero(wide),
                _searchBar(wide),
                _destinations(),
                _footer(),
              ],
            ),
          );
        },
      ),
    );
  }

  // --- Navigasi atas ---
  Widget _navBar(bool wide) {
    const items = ['Home', 'Tours', 'Destination', 'Blog', 'Page', 'Contact'];
    return _wrap(
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: [
            const Icon(Icons.explore_outlined, color: kOrange, size: 30),
            const SizedBox(width: 8),
            const Text(
              'jogja',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: kInk,
              ),
            ),
            if (wide) ...[
              const SizedBox(width: 48),
              for (final item in items)
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: item == 'Home' ? kOrange : kInk,
                    ),
                  ),
                ),
            ],
            const Spacer(),
          ],
        ),
      ),
    );
  }

  // ---  panel  + foto + judul 
  Widget _hero(bool wide) {
    final image = tourismPlaceList.first.imageAsset;

    final textBlock = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _scriptText('Natural beauty'),
        const SizedBox(height: 8),
        Text(
          'Discover the\nmost engaging\nplaces',
          style: TextStyle(
            fontSize: wide ? 54 : 38,
            height: 1.1,
            fontWeight: FontWeight.w800,
            color: kInk,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(height: 28),
        ElevatedButton(
          onPressed: _scrollToList,
          style: ElevatedButton.styleFrom(
            backgroundColor: kNavy,
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Explore Now',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, size: 14),
            ],
          ),
        ),
      ],
    );

    if (!wide) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: kCream,
              padding: const EdgeInsets.all(24),
              child: textBlock,
            ),
            const SizedBox(height: 12),
            Image.network(
              image,
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => _brokenImage(null, 240),
            ),
          ],
        ),
      );
    }

    return _wrap(
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 460,
          child: Stack(
            children: [
              Positioned.fill(
                child: Row(
                  children: [
                    Expanded(flex: 4, child: Container(color: kCream)),
                    Expanded(
                      flex: 6,
                      child: Image.network(
                        image,
                        height: 460,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _brokenImage(null, 460),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 56,
                top: 0,
                bottom: 0,
                child: Align(alignment: Alignment.centerLeft, child: textBlock),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- Kotak pencarian ---
  Widget _searchBar(bool wide) {
    final fields = [
      _field(
        Icons.location_on_outlined,
        'Destinasi',
        TextField(
          controller: _queryCtrl,
          onSubmitted: (_) => _search(),
          style: const TextStyle(fontSize: 12, color: kInk),
          decoration: const InputDecoration(
            isDense: true,
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: 'Mau ke mana?',
            hintStyle: TextStyle(fontSize: 12, color: kMuted),
          ),
        ),
      ),
      _field(
        Icons.explore_outlined,
        'Lokasi',
        DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _location,
            isDense: true,
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: kMuted,
            ),
            style: const TextStyle(fontSize: 12, color: kMuted),
            dropdownColor: Colors.white,
            items: [
              for (final l in _locations)
                DropdownMenuItem(value: l, child: Text(l)),
            ],
            onChanged: (v) => setState(() => _location = v ?? 'Semua'),
          ),
        ),
      ),
      _field(
        Icons.calendar_month_outlined,
        'Kapan',
        InkWell(
          onTap: _pickDate,
          child: Text(
            _date == null
                ? 'Pilih tanggal'
                : '${_date!.day}/${_date!.month}/${_date!.year}',
            style: TextStyle(
              fontSize: 12,
              color: _date == null ? kMuted : kInk,
            ),
          ),
        ),
      ),
      _field(
        Icons.person_outline,
        'Tamu',
        Row(
          children: [
            InkWell(
              onTap: () {
                if (_guests > 1) setState(() => _guests--);
              },
              child: const Icon(
                Icons.remove_circle_outline,
                size: 16,
                color: kMuted,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                '$_guests',
                style: const TextStyle(fontSize: 12, color: kInk),
              ),
            ),
            InkWell(
              onTap: () => setState(() => _guests++),
              child: const Icon(
                Icons.add_circle_outline,
                size: 16,
                color: kMuted,
              ),
            ),
          ],
        ),
      ),
    ];

    final button = InkWell(
      onTap: _search,
      child: Container(
        color: kOrange,
        height: wide ? double.infinity : 52,
        padding: const EdgeInsets.symmetric(horizontal: 36),
        alignment: Alignment.center,
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search, color: Colors.white, size: 18),
            SizedBox(width: 8),
            Text(
              'Cari',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );

    Widget divider() => Container(width: 1, height: 44, color: kLine);

    final box = Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: wide
            ? SizedBox(
                height: 76,
                child: Row(
                  children: [
                    Expanded(flex: 3, child: fields[0]),
                    divider(),
                    Expanded(flex: 3, child: fields[1]),
                    divider(),
                    Expanded(flex: 3, child: fields[2]),
                    divider(),
                    Expanded(flex: 2, child: fields[3]),
                    button,
                  ],
                ),
              )
            : Column(
                children: [
                  for (final f in fields) ...[
                    SizedBox(height: 64, child: f),
                    const Divider(height: 1, color: kLine),
                  ],
                  button,
                ],
              ),
      ),
    );

    return _wrap(
      Padding(
        padding: EdgeInsets.fromLTRB(
          wide ? 80 : 24,
          wide ? 0 : 20,
          wide ? 80 : 24,
          0,
        ),
        child: Transform.translate(
          offset: Offset(0, wide ? -38 : 0),
          child: box,
        ),
      ),
    );
  }

  Widget _field(IconData icon, String label, Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(icon, color: kOrange, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: kInk,
                  ),
                ),
                const SizedBox(height: 4),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- Daftar destinasi ---
  Widget _destinations() {
    final places = _filtered;
    return Container(
      key: _listKey,
      width: double.infinity,
      color: kCream,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.symmetric(vertical: 64),
      child: _wrap(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _scriptText('Top places'),
              const SizedBox(height: 6),
              const Text(
                'Pilihan destinasi di Jogja',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                  color: kInk,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 32),
              if (places.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Text(
                    'Tidak ada destinasi yang cocok.',
                    style: TextStyle(color: kMuted, fontSize: 15),
                  ),
                )
              else
                LayoutBuilder(
                  builder: (context, c) {
                    final cols = c.maxWidth >= 900
                        ? 3
                        : c.maxWidth >= 560
                        ? 2
                        : 1;
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: places.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: cols,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 340,
                      ),
                      itemBuilder: (context, i) => PlaceCard(
                        place: places[i],
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailScreen(place: places[i]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _footer() => const Padding(
    padding: EdgeInsets.symmetric(vertical: 28),
    child: Text(
      '© Wisata Jogja',
      style: TextStyle(color: kMuted, fontSize: 13),
    ),
  );
}

// ---------- Kartu destinasi
// Saat kursor bergerak di atas kartu, kartu & paddingnya ikut bergeser.
class PlaceCard extends StatefulWidget {
  final TourismPlace place;
  final VoidCallback onTap;

  const PlaceCard({super.key, required this.place, required this.onTap});

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool _hover = false;
  bool _press = false;
  double _dx = 0;
  double _dy = 0;

  bool get _active => _hover || _press;

  void _onHover(PointerHoverEvent e) {
    final size = (context.findRenderObject() as RenderBox).size;
    setState(() {
      _dx = (((e.localPosition.dx / size.width) - 0.5) * 2).clamp(-1.0, 1.0);
      _dy = (((e.localPosition.dy / size.height) - 0.5) * 2).clamp(-1.0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    final place = widget.place;
    final active = _active;
    const duration = Duration(milliseconds: 240);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() {
        _hover = false;
        _dx = 0;
        _dy = 0;
      }),
      onHover: _onHover,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: (_) => setState(() => _press = true),
        onTapUp: (_) => setState(() => _press = false),
        onTapCancel: () => setState(() => _press = false),
        onTap: widget.onTap,
        child: Align(
          alignment: Alignment.topCenter,
          child: AnimatedContainer(
            duration: duration,
            curve: Curves.easeOut,
            width: double.infinity,
            padding: EdgeInsets.all(active ? 14 : 10),
            transform: Matrix4.translationValues(
              active ? _dx * 5 : 0,
              active ? -4 + _dy * 3 : 0,
              0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: kLine),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(active ? 0.12 : 0.04),
                  blurRadius: active ? 26 : 10,
                  offset: Offset(0, active ? 14 : 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: place.name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: AnimatedScale(
                        duration: duration,
                        scale: active ? 1.06 : 1.0,
                        child: Image.network(
                          place.imageAsset,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => _brokenImage(null, 190),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  place.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: kInk,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: kOrange,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      place.location,
                      style: const TextStyle(fontSize: 13, color: kMuted),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        place.ticketPrice,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: kOrange,
                        ),
                      ),
                    ),
                    AnimatedSlide(
                      duration: duration,
                      offset: Offset(active ? 0.3 : 0, 0),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: kOrange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ---------- Halaman detail 
class DetailScreen extends StatefulWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  final ScrollController _galleryCtrl = ScrollController();

  @override
  void dispose() {
    _galleryCtrl.dispose();
    super.dispose();
  }

  
  void _onGalleryPointerSignal(PointerSignalEvent event) {
    if (event is! PointerScrollEvent || !_galleryCtrl.hasClients) return;
    if (event.scrollDelta.dy.abs() <= event.scrollDelta.dx.abs()) return;

    final pos = _galleryCtrl.position;
    final target = (pos.pixels + event.scrollDelta.dy)
        .clamp(0.0, pos.maxScrollExtent)
        .toDouble();
    if (target == pos.pixels) return;

    GestureBinding.instance.pointerSignalResolver.register(event, (_) {
      _galleryCtrl.jumpTo(target);
    });
  }

  @override
  Widget build(BuildContext context) {
    final place = widget.place;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, c) {
            final wide = c.maxWidth >= 860;

            final image = Hero(
              tag: place.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  place.imageAsset,
                  height: wide ? 420 : 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      _brokenImage(null, wide ? 420 : 260),
                ),
              ),
            );

            final info = Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _scriptText(place.location),
                const SizedBox(height: 6),
                Text(
                  place.name,
                  style: TextStyle(
                    fontSize: wide ? 38 : 30,
                    height: 1.1,
                    fontWeight: FontWeight.w800,
                    color: kInk,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: kLine),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 18,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 10,
                        child: _infoItem(
                          Icons.calendar_month_outlined,
                          'Buka',
                          place.openDays,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: _infoItem(
                          Icons.access_time,
                          'Jam',
                          place.openTime,
                        ),
                      ),
                      Expanded(
                        flex: 13,
                        child: _infoItem(
                          Icons.confirmation_number_outlined,
                          'Tiket',
                          place.ticketPrice,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  place.description,
                  style: const TextStyle(
                    fontSize: 14.5,
                    height: 1.7,
                    color: Color(0xFF55514D),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () => setState(() => isFavorite = !isFavorite),
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 16,
                  ),
                  label: Text(
                    isFavorite ? 'Tersimpan' : 'Simpan ke favorit',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kNavy,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ],
            );

            return SingleChildScrollView(
              physics: kScrollPhysics,
              child: _wrap(
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Bar atas: tombol kembali + logo
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: kLine),
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                size: 18,
                                color: kInk,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.explore_outlined,
                            color: kOrange,
                            size: 26,
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            'jogja',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: kInk,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      if (wide)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 6, child: image),
                            const SizedBox(width: 48),
                            Expanded(flex: 5, child: info),
                          ],
                        )
                      else ...[
                        image,
                        const SizedBox(height: 24),
                        info,
                      ],
                      const SizedBox(height: 44),
                      _scriptText('Gallery'),
                      const SizedBox(height: 4),
                      const Text(
                        'Galeri foto',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w800,
                          color: kInk,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Listener(
                        onPointerSignal: _onGalleryPointerSignal,
                        child: SizedBox(
                          height: 170,
                          child: ListView.separated(
                            controller: _galleryCtrl,
                            scrollDirection: Axis.horizontal,
                            physics: kScrollPhysics,
                            itemCount: place.gallery.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 14),
                            itemBuilder: (_, i) => ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                place.gallery[i],
                                width: 240,
                                height: 170,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) =>
                                    _brokenImage(240, 170),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _infoItem(IconData icon, String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: kOrange, size: 24),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: kInk,
          ),
        ),
        const SizedBox(height: 2),
        Text(value, style: const TextStyle(fontSize: 11.5, color: kMuted)),
      ],
    );
  }
}
