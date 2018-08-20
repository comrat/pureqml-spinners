Rectangle {
	anchors.fill: context;
	color: colorsControl.backgroundColor;

	Image {
		width: 100%;
		height: 100%;
		source: "res/shadow2.png";
	}

	Image {
		y: 2%;
		height: 90;
		anchors.horizontalCenter: parent.horizontalCenter;
		fillMode: Image.PreserveAspectFit;
		source: "res/logo.png";
	}

	Grid {
		width: 80%;
		height: 80%;
		verticalSpacing: 30;
		horizontalSpacing: 30;
		horizontalAlignment: Grid.AlignHCenter;
		anchors.centerIn: parent;

		SpinnerWindow {
			componentName: "DoubleBounceSpinner";
			componentColor: colorsControl.spinnerColor;

			DoubleBounceSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "BounceDotsSpinner";
			componentColor: colorsControl.spinnerColor;

			BounceDotsSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "RingSpinner";
			componentColor: colorsControl.spinnerColor;

			RingSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "TwoDotsSpinner";
			componentColor: colorsControl.spinnerColor;

			TwoDotsSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "SquareSpinner";
			componentColor: colorsControl.spinnerColor;

			SquareSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "SquareGridSpinner";
			componentColor: colorsControl.spinnerColor;

			SquareGridSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "FadingSquaresSpinner";
			componentColor: colorsControl.spinnerColor;

			FadingSquaresSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "BounceBarsSpinner";
			componentColor: colorsControl.spinnerColor;

			BounceBarsSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}

		SpinnerWindow {
			componentName: "RippleSpinner";
			componentColor: colorsControl.spinnerColor;

			RippleSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}
	}

	Text {
		width: 80%;
		anchors.horizontalCenter: parent.horizontalCenter;
		anchors.bottom: parent.bottom;
		anchors.bottomMargin: 20;
		horizontalAlignment: Text.AlignHCenter;
		color: "#fff";
		font.pixelSize: 16;
		text: "HOW TO USE<br>" +
			"Clone this repo to your project:<br>" +
			"git clone https://github.com/comrat/pureqml-spinners.git<br>" +
			"Click spinner you want to get its code";
	}

	ColorsControl {
		id: colorsControl;
		anchors.right: parent.right;
		anchors.bottom: parent.bottom;
		anchors.margins: 20;
	}

	CodeDialog { id: codeDialog; }
}
