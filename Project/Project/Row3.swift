
import UIKit

class Row3: UITableViewCell {
    
    @IBOutlet weak var collectionCell: UICollectionView!
    var array:[String] = []
    var array1:[String] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension Row3: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        cell.lable.text = array[indexPath.row]
        cell.picture.image = UIImage(named: array1[indexPath.row])
        return cell
    }
}
