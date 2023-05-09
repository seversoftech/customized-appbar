import 'package:flutter/material.dart';

import '../widgets/logoPainter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
          painter: LogoPainter(),
          size: const Size(400, 195),
          child: _appBarContent()),
    );
  }

  Widget _appBarContent() {
    return Container(
      height: 195,
      width: 400,
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          _header(),
          const SizedBox(
            height: 20,
          ),
          _userInfo()
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
          size: 30,
        ),
        InkWell(
          onTap: () {
            debugPrint('Menu');
          },
          child: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }

  Widget _userInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _userAvatar(),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              _userPersonalInfo(),
              const SizedBox(
                height: 25,
              ),
              _userFollowInfo()
            ],
          ),
        )
      ],
    );
  }

  Widget _userAvatar() {
    return const CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage('assets/images/avater.png'),
    );
  }

  Widget _userPersonalInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sever',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Worldwide:Africa',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 12,
                        letterSpacing: 2,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  debugPrint('Followed');
                },
                child: const Text(
                  'Follow Me',
                  style: TextStyle(
                      color: Color.fromARGB(255, 65, 1, 88),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _userFollowInfo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '238',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Following',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '37',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Bucket',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '13046',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Followers',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 11),
            ),
          ],
        ),
      ],
    );
  }
}
