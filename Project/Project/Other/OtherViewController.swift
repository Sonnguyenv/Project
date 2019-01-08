
import UIKit

class OtherViewController: UIViewController {
  
    @IBOutlet weak var mytable: UITableView!
    
    var array:[String] = ["Tìm Quanh Đây", "Phòng Trò Chuyện", "Quét Mã QR", "Shop", "Sticker", "Game"]
    var array2:[String] = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.dataSource = self
        mytable.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = ""
    }
}

extension OtherViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }else if section == 1 {
            return array.count
        }
        return array.count
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9490196078, blue: 0.9647058824, alpha: 1)
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OtherTableViewCell") as! OtherTableViewCell
        cell.lable2.text = array[indexPath.row]
        cell.picture2.image = UIImage(named: array2[indexPath.row])
        return cell
    }
}

extension OtherViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        if section == 1 {
            return 10
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let screen2 = storyBoard.instantiateViewController(withIdentifier: "SegementedVC") as! SegementedVC
        navigationController?.pushViewController(screen2, animated: true)
    }
}

