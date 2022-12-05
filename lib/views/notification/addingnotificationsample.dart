import 'package:eamui/views/constants.dart';
import 'package:flutter/material.dart';
import 'widgets/label_widget.dart';
import 'widgets/textfield.dart';

class Notificationn extends StatefulWidget {
  Notificationn(
      {Key? key,
      // required this.notificationModel,
      // required this.notifHeader,
      // this.notifTypeHeader,
      required this.callBackListener})
      : super(key: key);

  // final NotificationModel notificationModel;
  // final NOTIF_HEADER notifHeader;
  // C_NOTIF_TYPE_HEADER? notifTypeHeader;
  final Function(bool enabledFailureCard, bool enableFunctionCard)
      callBackListener;

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  List<String> button = ["Very High", "High", "Medium", "Low"];
  int? _value;
  TextEditingController controller = TextEditingController();
  TextEditingController type = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
        title: Text(
          "Add Notification",
          style: kTextStyle2,
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Save",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              )),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SizedBox();
                }));
              },
              child: Text(
                "Message",
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              generalCard(),
              technicalObjects(),
              workCenterAndPlant(),
              dates(),
              malFunctioning(),
              attachments()
            ],
          ),
        ),
      ),
    );
  }

  generalCard() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Card(
        elevation: 0,
        color: Colors.grey[100],
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "General",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              notificationDescription(),
              notificationType(),
              priority(),
              longText()
            ],
          ),
        ),
      ),
    );
  }

  notificationDescription() {
    return LabelCustomWidget(
      label: "Notification Description",
      widget: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: TextField(
          readOnly: false,
          decoration: InputDecoration(
              hintText: "Enter short text",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey))),
          controller: controller,
          onTap: () {},
        ),
      ),
    );
  }

  notificationType() {
    return LabelCustomWidget(
        label: "Notification Type",
        widget: TextFieldd(
          controller: type,
          onTap: () {
            // _navigateToSingleSelectionPage();
          },
          onChanged: (val) {},
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black12)),
        ));
  }

  // _navigateToSingleSelectionPage() {
  //   Navigator.pushNamed(
  //     context,
  //     SingleSelectionPage.routeName,
  //     arguments: SingleScreenIntent(
  //         fieldPMode: widget.notifHeader.objectStatus == ObjectStatus.add
  //             ? Constants.P_MODE_ADD
  //             : Constants.P_MODE_MODIFY,
  //         tableName: C_NOTIF_TYPE_HEADER.TABLE_NAME),
  //   ).then((value) async {
  //     if (value is SingleSelectModel) {
  //       widget.notificationModel.notificationType = value.id;
  //       widget.notificationModel.notificationTypeDesc = value.description;
  //       type.text = '${value.id} (${value.description})';
  //       widget.notifTypeHeader =
  //           await NotificationHelper.getNotifTypeHeader(notifType: value.id);
  //       bool enabledFailureCard = false;
  //       bool enabledmalFunctionCard = false;
  //       if (Constants.NOTIF_TYPE_TPM_ACTIVITIES == (value.id)) {
  //         enabledFailureCard = true;
  //       } else {
  //         enabledFailureCard = false;
  //       }

  //       if (Constants.NOTIF_TYPE_MALFUNCTION_REP == (value.id)) {
  //         enabledmalFunctionCard = true;
  //       } else {
  //         enabledmalFunctionCard = false;
  //       }
  //       widget.callBackListener(enabledFailureCard, enabledmalFunctionCard);
  //       setState(() {});
  //     }
  //   });
  // }

  priority() {
    return LabelCustomWidget(
        label: "Priority",
        widget: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(
                button.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ChoiceChip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          side: BorderSide(
                              color:
                                  _value == index ? Colors.blue : Colors.grey)),
                      label: Text(
                        '${button[index]}',
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                            fontSize: 17,
                            color:
                                _value == index ? Colors.white : Colors.grey),
                      ),
                      avatar: _value == index
                          ? Icon(
                              Icons.check,
                              color: _value == index ? Colors.white : null,
                            )
                          : null,
                      selected: _value == index,
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.white,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : null;
                        });
                      },
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ));
  }

  longText() {
    return LabelCustomWidget(
      label: "Long Text*",
      widget: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: TextField(
          readOnly: false,
          maxLines: null,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
        ),
      ),
    );
  }

  technicalObjects() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 0,
        color: Colors.grey[100],
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Technical Objects",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              LabelCustomWidget(
                  label: "Functional Location",
                  widget: TextFieldd(
                    controller: controller,
                    onTap: () {},
                    onChanged: (val) {},
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12)),
                  )),
              LabelCustomWidget(
                label: "Equipment",
                widget: TextFieldd(
                  controller: controller,
                  onTap: () {},
                  onChanged: (val) {},
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Breakdown",
                      style: TextStyle(fontSize: 18),
                    )),
                    Switch(
                      value: true,
                      activeColor: Colors.blue,
                      onChanged: (bool value) {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  workCenterAndPlant() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 0,
        color: Colors.grey[100],
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Work Center And Plant",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              LabelCustomWidget(
                label: "Maintenance Planning Plant",
                widget: TextFieldd(
                  controller: controller,
                  onTap: () {},
                  onChanged: (val) {},
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                ),
              ),
              LabelCustomWidget(
                  label: "Work Center",
                  widget: TextFieldd(
                    controller: controller,
                    readOnly: false,
                    onTap: () {},
                    onChanged: (val) {},
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12)),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  dates() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 0,
        color: Colors.grey[100],
        margin: EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Dates",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              LabelCustomWidget(
                label: "Start Date",
                widget: TextFieldd(
                  controller: controller,
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.calendar_month)),
                  onTap: () {},
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                ),
              ),
              LabelCustomWidget(
                label: "End Date",
                widget: TextFieldd(
                  controller: controller,
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.calendar_month)),
                  onTap: () {},
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black12),
                  // ),
                  // focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  malFunctioning() {
    return Card(
      elevation: 0,
      color: Colors.grey[100],
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                "MalFunction",
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ),
            LabelCustomWidget(
                label: "Malfunction Start Date And Time",
                widget: TextFieldd(
                  controller: controller,
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.calendar_month)),
                  onTap: () {},
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                )),
            LabelCustomWidget(
                label: "Malfunction End Date And Time",
                widget: TextFieldd(
                  controller: controller,
                  onTap: () {},
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: Icon(Icons.calendar_month)),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12)),
                )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 6.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //           child: Text(
            //         "Breakdown",
            //         style: TextStyle(fontSize: 18),
            //       )),
            //       Switch(
            //         value: true,
            //         activeColor: Colors.blue,
            //         onChanged: (bool value) {},
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  attachments() {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10.0, top: 10),
        child: Card(
            elevation: 0,
            color: Colors.grey[100],
            margin: EdgeInsets.all(0),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Attachments",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ),
                      LabelCustomWidget(
                          label: "Attach Documents",
                          widget: TextFieldd(
                            controller: controller,
                            onTap: () {},
                            hintText: "Take a Photo or Upload from Gallery",
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12)),
                          )),
                    ]))));
  }
}
