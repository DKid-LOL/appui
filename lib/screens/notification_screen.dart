import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF0E1C1F),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: AppBar(
            backgroundColor: const Color(0xFF0E1C1F),
            elevation: 0,
            flexibleSpace: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Thông Báo',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Bạn Có ',
                            style: TextStyle(color: Colors.white70),
                          ),
                          TextSpan(
                            text: '7 Thông Báo ',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                          TextSpan(
                            text: 'Chưa Xem',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const TabBar(
                      indicatorColor: Colors.redAccent,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white60,
                      tabs: [
                        Tab(text: 'Tất Cả'),
                        Tab(text: 'Đã Đọc'),
                        Tab(text: 'Chưa Đọc'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            NotificationListView(),
            NotificationListView(), // có thể thay đổi sau nếu cần
            NotificationListView(),
          ],
        ),
      ),
    );
  }
}

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        const SectionTitle(title: 'Hôm Nay'),
        const SizedBox(height: 8),
        ...List.generate(3, (_) => const NotificationTile()),

        const SizedBox(height: 20),
        const SectionTitle(title: 'Tuần Này'),
        const SizedBox(height: 8),
        ...List.generate(2, (_) => const NotificationTile()),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1C2B2E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Lộc Tồn, Xem Chuyển Vận',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Những người nghiên cứu về tử vi thường không hiểu sâu sắc về sao lộc tồn. dựa theo những ghi chép------Xem thêm',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}
