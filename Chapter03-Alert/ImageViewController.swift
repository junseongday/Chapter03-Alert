import UIKit
class ImageViewController: UIViewController {
    override func viewDidLoad() {
        let icon = UIImage(named: "rating5")
        let iconV = UIImageView(image: icon)
        iconV.frame = CGRect(x: 0, y: 0, width: (icon?.size.width)!, height: (icon?.size.height)!)
        self.view.addSubview(iconV)
        
        // rootview를 iconV로 한다면 초기값을 다 0으로 해도 된다 하지만 map이 아니면 비추일지도??
//        iconV.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
//        self.view = iconV
                
        self.preferredContentSize = CGSize(width: (icon?.size.width)!, height: (icon?.size.height)! + 10)
    }
}
