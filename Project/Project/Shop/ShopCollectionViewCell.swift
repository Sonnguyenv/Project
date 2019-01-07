

import UIKit

class ShopCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var picTure: UIImageView!
    
    @IBOutlet weak var textLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        picTure.layer.cornerRadius = picTure.frame.width / 2
        picTure.clipsToBounds = true
    }
}
