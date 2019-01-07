
import UIKit

class ShopTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var picTure:[String] = []
    var textLable:[String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension ShopTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picTure.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShopCollectionViewCell", for: indexPath) as! ShopCollectionViewCell
        cell.picTure.image = UIImage(named: picTure[indexPath.row])
        cell.textLable.text = textLable[indexPath.row]
        return cell
    }
}
