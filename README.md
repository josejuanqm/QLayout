QLayout is an Utility to make Auto Layout easy on iOS.

## Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

## Requirements

- iOS 8.0+
- Swift 3.0+

## Installation

### CocoaPods

To integrate QLayout into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'QLayout'
end
```

Then, run the following command:

```bash
$ pod install
```

---

## Usage

### Quick Start

```swift
import QLayout

class ViewController: UIViewController {

    lazy var subView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(subView)
        
        subView.layout.width.height.equalTo(50)
        subView.layout.center.equalTo(view)
    }

}
```

## Credits

- Jose Quintero ([@josejuanqm](https://twitter.com/josejuanqm))

## License

QLayout is released under the MIT license. See LICENSE for details.
