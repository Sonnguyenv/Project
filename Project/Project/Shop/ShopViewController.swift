

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var imgBackgroud: UIImageView!
    
    @IBOutlet weak var myTable: UITableView!
    var textShop:[String] = ["Mỹ Phẩm", "Đặc trị nám", "Viên thẩm mỹ", "Tăng cân & giảm cân", "Nghe nhạc", "Xem phim", "Thể thao", "Du lịch", "Ảnh đẹp"]
    var textMost:[String] = ["Mỹ Phẩm", "Đặc trị nám", "Viên thẩm mỹ", "Tăng cân & giảm cân", "Nghe nhạc", "Xem phim", "Thể thao", "Du lịch", "Ảnh đẹp"]
    var textOther:[String] = ["Mỹ Phẩm", "Đặc trị nám", "Viên thẩm mỹ", "Tăng cân & giảm cân", "Nghe nhạc", "Xem phim", "Thể thao", "Du lịch", "Ảnh đẹp"]
    var picTureShop:[String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"]
    var picTureMost:[String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"]
    var picTureOther:[String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
    }
}
extension ShopViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell") as! ShopTableViewCell
        if indexPath.section == 0 {
            cell.picTure = picTureShop
            cell.textLable = textShop
        }else if indexPath.section == 1 {
            cell.picTure = picTureMost
            cell.textLable = textMost
        }else {
            cell.picTure = picTureOther
            cell.textLable = textOther
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Shop nổi bật"
        }else if section == 1 {
            return "Most active"
        }else {
            return "Có thể bạn quan tâm"
        }
    }
}

extension ShopViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
