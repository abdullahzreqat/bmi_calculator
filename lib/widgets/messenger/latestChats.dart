import 'package:flutter/material.dart';
import '../../models/contacts/contacts_model.dart';

class LatestChat extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
        id: 1,
        name: 'Momen Zreqat',
        image:
            'https://scontent.famm10-1.fna.fbcdn.net/v/t1.18169-1/13346838_1606138329714820_4097277787186997377_n.jpg?stp=c67.14.351.351a_dst-jpg_p480x480&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=-E-KW6eJdm8AX-qVwld&_nc_ht=scontent.famm10-1.fna&oh=00_AfC_ud8hBidK1BDylc_YtDJjFTi2XiDkB7CS2PhYCSLYnw&oe=6411026B'),
    Contact(
        id: 2,
        name: 'Saad Alzoubi',
        image:
            'https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/324133449_484604377191771_6152953055606987491_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=SIYHkMO_8f0AX8u_INb&_nc_ht=scontent.famm7-1.fna&oh=00_AfAnBHEFxhzH1YPqafcNYyS0HfsdvuNangBaqfAUaXsA6A&oe=63F76B0E'),
    Contact(
        id: 3,
        name: "Amjad Alkhawaldeh",
        image:
            'https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/85145629_2198724110230278_7806841790559944704_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=ad2b24&_nc_ohc=1TunNACaDJEAX_M_2XE&tn=jFAZIlDqK8soLrVU&_nc_ht=scontent.famm10-1.fna&oh=00_AfBdTOGCqd7RNJGkI2at0iPXfrjiYc-lcII-JffhhN-l8Q&oe=641113D4'),
    Contact(
        id: 4,
        name: "Issam Abo Hammam",
        image:
            "https://scontent.famm10-1.fna.fbcdn.net/v/t1.18169-1/17200996_877854352357252_5988431307764403353_n.jpg?stp=dst-jpg_p480x480&_nc_cat=100&ccb=1-7&_nc_sid=7206a8&_nc_ohc=TXiELwXp5ywAX9OBLsm&_nc_ht=scontent.famm10-1.fna&oh=00_AfA4HyJLQAwe1rTPkKbsZ-3LF0VPGMiVIb9fqgeoJDuHmA&oe=64111854"),
    Contact(
        id: 5,
        name: "Huthaifa Kiswane",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/291761103_1058454031761043_4298570778766215073_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qEzg7hiDTZkAX-fK_B2&_nc_ht=scontent.famm7-1.fna&oh=00_AfBXDzSNm3X09WZgspjOnlKCnqx9QvNLAd-RakAVRrLtAA&oe=63F7E27F"),
    Contact(
        id: 6,
        name: "Ayman Irziqat",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-1/240442366_10226130545707507_2452402174820633847_n.jpg?stp=c23.0.200.200a_dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=7206a8&_nc_ohc=tRG3sMbM0u0AX8kfGOY&tn=jFAZIlDqK8soLrVU&_nc_ht=scontent.famm7-1.fna&oh=00_AfD7jHOuIwEd97H035dNXP7jo2tWhQU28w3bMhGAOsv8MA&oe=63F6E309"),
    Contact(
        id: 7,
        name: "Basmat Jibrel",
        image:
            "https://scontent.famm10-1.fna.fbcdn.net/v/t1.6435-9/122824555_2746651545557022_5195711601167070432_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=906SXtl7lWMAX9hqg9q&_nc_ht=scontent.famm10-1.fna&oh=00_AfBjqx166CgEJDfVP1Gf8MW3lg1Uagr1d004-qqbIf1wIQ&oe=6411245F"),
    Contact(
        id: 8,
        name: "Mohammad Alqatatsha",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-1/312448454_2435517116614017_7130816722260346894_n.jpg?stp=dst-jpg_p480x480&_nc_cat=107&ccb=1-7&_nc_sid=7206a8&_nc_ohc=1cyDQ_91Mm0AX-drGFh&_nc_ht=scontent.famm7-1.fna&oh=00_AfAchnMbhavC7iUnLY2HPqDQz1ZYWev-eZNATog-hmQrPw&oe=63F7888B"),
    Contact(
        id: 9,
        name: "Ahmad Zreqat",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/272760328_105969045332183_5100441626017743805_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=isjI1UT2sAEAX_EZalc&_nc_ht=scontent.famm7-1.fna&oh=00_AfBh43Lt_LV83XZpN_aym8HVIZo64a0X0u6_Egj_9Gd3qw&oe=63F7931C"),
    Contact(
        id: 10,
        name: "Muna Irziqat",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-1/281645913_10160077307124781_8949311941888040138_n.jpg?stp=dst-jpg_s480x480&_nc_cat=102&ccb=1-7&_nc_sid=7206a8&_nc_ohc=2nvfpcP0DC4AX8mA36Z&_nc_ht=scontent.famm7-1.fna&oh=00_AfB60SiVNdyz8z5i_Xo3_KWm6kgGsVevCJfYovBRllgGuA&oe=63F6DC2A"),
    Contact(
        id: 11,
        name: "Salom Al Horiny",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/316665444_10222450828234655_7241309036201821265_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=XMiXBYLL0WUAX9naiIE&_nc_ht=scontent.famm7-1.fna&oh=00_AfDOl3s8dsab2yuyA988C0DhwRpvazj5gUXJc9JC0qFXJQ&oe=63F87540"),
    Contact(
        id: 12,
        name: "Anas Zreqat",
        image:
            "https://scontent.famm7-1.fna.fbcdn.net/v/t39.30808-6/272889766_1069189517195358_4254651943852326966_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=u9spvoHAaKwAX9umB-3&_nc_ht=scontent.famm7-1.fna&oh=00_AfDCCTkT_vDDEdnvBuCfSrXGtmzSEfCvkth_pv_X0umKzQ&oe=63F6ECB7"),
  ];

  LatestChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (ctx, i) {
          return Row(children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(contacts[i].image),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    contacts[i].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "You called Ayman.",
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          height: 2,
                          width: 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                        '2:05 PM',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 83,
            ),
            Icon(
              Icons.check_circle,
              color: Colors.white30,
              size: 20,
            ),
          ]);
        },
        separatorBuilder: (ctx, i) => SizedBox(
              height: 15,
            ),
        itemCount: contacts.length);
  }
}
