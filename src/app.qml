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
			componentName: "SquareSpinner";
			componentColor: colorsControl.spinnerColor;

			SquareSpinner {
				anchors.centerIn: parent;
				color: colorsControl.spinnerColor;
			}

			onClicked: { codeDialog.show(this.code) }
		}
	}

	ColorsControl {
		id: colorsControl;
		anchors.bottom: parent.bottom;
		anchors.bottomMargin: 20;
	}

	CodeDialog { id: codeDialog; }
}
