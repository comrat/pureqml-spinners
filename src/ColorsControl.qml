Row {
	property Color backgroundColor: bgColorInput.color;
	property Color spinnerColor: spinnerColorInput.color;
	anchors.horizontalCenter: parent.horizontalCenter;
	spacing: 30;

	Column {
		width: 100;

		Text {
			anchors.horizontalCenter: parent.horizontalCenter;
			font.pixelSize: 18;
			text: "Background";
			color: "#fff";
		}

		ColorInput {
			id: bgColorInput;
			width: 100%;
			anchors.bottom: parent.bottom;
			anchors.bottomMargin: 20;
			color: "#c79081";
		}
	}

	Column {
		width: 100;

		Text {
			anchors.horizontalCenter: parent.horizontalCenter;
			font.pixelSize: 18;
			text: "Spinner";
			color: "#fff";
		}

		ColorInput {
			id: spinnerColorInput;
			width: 100%;
			anchors.bottom: parent.bottom;
			anchors.bottomMargin: 20;
			color: "#ffffff";
		}
	}
}
