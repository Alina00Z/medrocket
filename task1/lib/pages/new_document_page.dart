import 'package:flutter/material.dart';
import 'package:task1/resources/colors.dart';
import 'package:task1/widgets/button_widget.dart';

class NewDocumentPage extends StatelessWidget {
  const NewDocumentPage({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),

        backgroundColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1), width: 2),
        ),
      ),
      body: const _Main(),
    );
  } // build - NewDocumentPage
} // NewDocumentPage

class _Main extends StatelessWidget {
  const _Main();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const _ContentWidget(), const _ButtonsWidget()],
      ),
    );
  } // build _Main
} // _Main

class _ContentWidget extends StatelessWidget {
  const _ContentWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        // PHOTO
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image.asset("assets/photo.png", fit: BoxFit.fill)),
          ],
        ),
        // DATA TABLE
        Column(
          spacing: 20,
          children: [
            // NAME
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.person_outline,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Text("Ирина", style: TextStyle(fontSize: 18)),
              ],
            ),

            // DATA
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("22 мая (вт), 16:00", style: TextStyle(fontSize: 18)),
                    Text(
                      "Дата получения документа",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(1, 1, 1, 0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // PLACE
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.local_hospital_outlined,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Клиника Фомина', style: TextStyle(fontSize: 18)),
                    Text(
                      "Бульвар Перервинский, д. 4",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(1, 1, 1, 0.6),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // TYPE
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.medical_services_outlined,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Стоматолог', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ],
            ),
          ],
        ),

        // INFO AREA
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 242, 217, 1),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                'Клиника прислала документ после приема. Чтобы добавить его в медкарту и посмотреть содержание, нужно будет указать дату рождения пациента. Это проверка для безопасности данных.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(1, 1, 1, 0.6),
                ),
              ),
            ),

            Positioned(
              right: -22,
              bottom: -22,
              child: Icon(
                Icons.info_outline_rounded,
                size: 80,
                color: Color.fromRGBO(248, 209, 172, 0.7),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ButtonsWidget extends StatelessWidget {
  const _ButtonsWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ButtonWidget(
          text: "Добавить в медкарту",
          onPressed: () {},
          backgroundColor: AppColors.blue,
          textColor: AppColors.white,
        ),
        ButtonWidget(
          text: "Удалить",
          onPressed: () {},
          backgroundColor: AppColors.blueOp10,
          textColor: AppColors.blue,
        ),
      ],
    );
  }
}