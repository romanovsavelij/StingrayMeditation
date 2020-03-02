import controls.FocusablePanel;


Column {
  id: menuButton;
  property string imagePath;
  property string label;
  spacing: 10;

  FocusablePanel {
    color: active ? "#ddddff" : colorTheme.focusablePanelColor;
    id: button2;
    width: 140;
    height: 140;
    radius: 70;

    Rectangle {
      radius: 60;
      height: 120;
      width: 120;
      anchors.centerIn: parent;
      color: "#fff";

      Image {
          anchors.centerIn: parent;
          width: 80;
          height: 80;
          source: menuButton.imagePath;
      }
    }
  } 

  BodyText {
    text: menuButton.label;
    anchors.horizontalCenter: parent.horizontalCenter;
  }
}
