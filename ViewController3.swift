
import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var myTable: UITableView!
    
    var array:[String] = ["Viện Thẩm Mỹ Y Khoa Dr Hải Lê", "Đặc Trị Nám Tàn Nhang", "Mỹ Phẩm", "Tăng Cân & Giảm Cân Khoa Học", "Tư Vấn Gia Đình"]
    var array1:[String] = ["Hội Người Thích Hoa Phong Lan", "Cứu Hộ Máy Tính Vĩnh Phúc", "Chợ Đồ Phuợt", "Dịch Vụ Làm Visa", "Shop Pụ Kiện"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController3: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Row3
        if indexPath.section == 0 {
            cell.array = array
        }else if indexPath.section == 1 {
            cell.array1 = array1
        }
        return cell
    }
}
