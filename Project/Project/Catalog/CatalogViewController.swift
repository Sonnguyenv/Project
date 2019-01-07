
import UIKit

class CatalogViewController: UIViewController {
    
    @IBOutlet weak var mytable: UITableView!
    
    var arrayText:[String] = ["Quán Ăn", "Mẹ & Bé", "Rạp Chiếu Phim", "Thời Trang / Phụ Kiện", "Thiết Bị Số & Cônng Nghệ", "Mỹ Phẩm / Làm Đẹp", "Khách Sạn", "Giáo Dục", "Sức Khoẻ", "Dịch Vụ Khác"]
    var arrayPicture:[String] = ["1.ipg", "2.ipg", "3.jpg", "4.jpg","5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.dataSource = self
    }
}

extension CatalogViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatalogTableViewCell") as! CatalogTableViewCell
        cell.lable.text = arrayText[indexPath.row]
        cell.picture.image = UIImage(named: arrayPicture[indexPath.row])
        return cell
    }
}
