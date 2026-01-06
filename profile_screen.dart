import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/49410031_981949218664631_8339749779185598464_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=PPsGR6u3TcIQ7kNvwHiWreu&_nc_oc=Adkg_viXy-Ty_bWCCWrrCIC_4HDa44tg66fsWRGsye8uhdoyb53xIpEKJlcuELzQ_cphIr16iUFKOjpKWkiuvmfR&_nc_zt=23&_nc_ht=scontent.fbkk12-3.fna&_nc_gid=EyNRG2kmcYFPpR6ma9icPw&oh=00_AfqblGmG50MqPuzmfwo4VHeakYPQoZd5-2Fz5KSITavxPw&oe=69843EC4',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.edit, color: Colors.white, size: 13),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'SwaggyNow',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text("nowsirasak@gmail.com"),
            ),
          ],
        ),
      ),
    );
  }
}
