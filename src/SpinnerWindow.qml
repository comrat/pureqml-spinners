WebItem {
	property string componentName;
	property string componentColor: "#fff";
	property string code: componentName + " " + commonCode;
	property string commonCode: "{\n" +
		"\tanchors.centerIn: parent;\n" +
		"\tcolor: \"" + componentColor +"\";\n" +
		"}";
	width: 200;
	height: 200;

	Text {
		width: 100%;
		anchors.bottom: parent.bottom;
		anchors.bottomMargin: 10;
		horizontalAlignment: Text.AlignHCenter;
		text: "{ source }";
		color: "#fff";
		opacity: parent.hover;

		Behavior on opacity { Animation { duration: 500; delay: 200; } }
	}
}
