

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var imgBackgroud: UIImageView!
    
    @IBOutlet weak var myTableShop: UITableView!
    
    let textArrayShop:[[String]] = [["Mỹ phẩm làm đẹp", "Đặc trị nám và tàn nhang", "Viên thẩm mỹ cao cấp", "Tăng cân & giảm cân", "Nghe nhạc thính phòng", "Xem phim hành động", "Thể thao vua", "Địa điểm du lịch", "Ảnh đẹp thiên nhiên"], ["Cờ vua", "Trò chuyện cùng người lạ", "Đặt vé máy bay", "Thuốc đông tây", "Phim hay trong tuần", "Lịch phương đông", "Thế giới động vật", "Tư vấn nhà đất", "Bốc bát họ"], ["Tắm trắng", "Học code cùng nhau", "Các mùa trong năm", "Gia đình số 1", "Iphone", "Vui chơi cùng trẻ", "Shop công nghệ", "Shop làm đẹp", "Tin tức trong nước"]]

    let imgArrayShop:[[String]] = [["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"],["21.jpg", "22.jpg", "23.jpg", "15.jpg", "16.jpg", "20.jpg", "12.jpg", "11.jpg", "19.jpg"],["12.jpg", "13.jpg", "14.jpg", "15.jpg", "16.jpg", "17.jpg", "18.jpg", "19.jpg", "20.jpg"]]
    
    let titleArrayShop = ["Shop nổi bật", "Most active", "Có thể bạn quan tâm"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableShop.dataSource = self
        myTableShop.delegate = self
    }
}

extension ShopViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleArrayShop.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell") as! ShopTableViewCell
        cell.textArray = textArrayShop[indexPath.section]
        cell.imgArray = imgArrayShop[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleArrayShop[section]
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
