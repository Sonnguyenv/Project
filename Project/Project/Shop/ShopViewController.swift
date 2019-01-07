

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var imgBackgroud: UIImageView!
    
    @IBOutlet weak var myTable: UITableView!
    var textShop:[String] = ["Mỹ phẩm làm đẹp", "Đặc trị nám và tàn nhang", "Viên thẩm mỹ cao cấp", "Tăng cân & giảm cân", "Nghe nhạc thính phòng", "Xem phim hành động", "Thể thao vua", "Địa điểm du lịch", "Ảnh đẹp thiên nhiên"]
    var textMost:[String] = ["Mỹ phẩm làm đẹp", "Đặc trị nám và tàn nhang", "Viên thẩm mỹ cao cấp", "Tăng cân & giảm cân", "Nghe nhạc thính phòng", "Xem phim hành động", "Thể thao vua", "Địa điểm du lịch", "Ảnh đẹp thiên nhiên"]
    var textOther:[String] = ["Mỹ phẩm làm đẹp", "Đặc trị nám và tàn nhang", "Viên thẩm mỹ cao cấp", "Tăng cân & giảm cân", "Nghe nhạc thính phòng", "Xem phim hành động", "Thể thao vua", "Địa điểm du lịch", "Ảnh đẹp thiên nhiên"]
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
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = #colorLiteral(red: 0.862745098, green: 0.9294117647, blue: 1, alpha: 1)
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
}

extension ShopViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
