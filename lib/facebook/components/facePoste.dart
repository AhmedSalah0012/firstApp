import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FaceBookBoste extends StatelessWidget {
  const FaceBookBoste({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "owner",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("3h "),
                        Icon(
                          Icons.public,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "My post",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Text("100",
                    style: TextStyle(color: Colors.grey[700], fontSize: 12)),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.blue[400], shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.red[400], shape: BoxShape.circle),
                  child: Icon(
                    Icons.favorite,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  "100 Comments",
                  style: TextStyle(color: Colors.grey[700], fontSize: 12),
                )
              ],
            ),
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.thumbUpOutline,
                      color: Colors.grey[600],
                      size: 25,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.commentOutline,
                      color: Colors.grey[600],
                      size: 25,
                    ),
                    Text(
                      "Comment",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.shareOutline,
                      color: Colors.grey[600],
                      size: 25,
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
