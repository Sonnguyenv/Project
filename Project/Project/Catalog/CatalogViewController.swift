
import UIKit

class CatalogViewController: UIViewController {
    
    @IBOutlet weak var myTableCatalog: UITableView!
    
    var textArray:[String] = ["Quán Ăn", "Mẹ & Bé", "Rạp Chiếu Phim", "Thời Trang / Phụ Kiện", "Thiết Bị Số & Cônng Nghệ", "Mỹ Phẩm / Làm Đẹp", "Khách Sạn", "Giáo Dục", "Sức Khoẻ", "Dịch Vụ Khác"]
    var imgArray:[String] = ["12.ipg", "13.ipg", "14.jpg", "15.jpg","16.jpg", "22.jpg", "18.jpg", "19.jpg", "20.jpg", "21.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableCatalog.dataSource = self
    }
}

extension CatalogViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatalogTableViewCell") as! CatalogTableViewCell
        cell.textCatalog.text = textArray[indexPath.row]
        cell.imgCatalog.image = UIImage(named: imgArray[indexPath.row])
        return cell
    }
}
