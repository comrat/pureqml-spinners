WebItem {
	id: codeDialogProto;
	property string code;
	width: 100%;
	height: 100%;
	color: "#000c";
	focus: visible;
	visible: false;
	cursor: "default";

	MouseArea {
		width: 100%;
		height: 100%;

		onClicked: { if (this.containsMouse) this.parent.hide() }
	}

	Rectangle {
		width: 500;
		height: 300;
		radius: 5;
		anchors.centerIn: parent;
		color: "#fff";

		CodeHighlighter {
			width: 90%;
			anchors.centerIn: parent;
			font.pixelSize: 18;
			language: "qml";
			code: codeDialogProto.code;
		}

		WebItem {
			width: 40;
			height: 40;
			anchors.top: parent.top;
			anchors.right: parent.right;
			anchors.margins: 5;

			ImageMixin {
				width: 100%;
				height: 100%;
				source: "res/close.png";
			}

			onClicked: { codeDialogProto.hide(); }
		}
	}

	show(code): {
		this.code = code
		this.visible = true
	}

	hide: {
		this.visible = false
	}

	onBackPressed: { this.hide() }
}
