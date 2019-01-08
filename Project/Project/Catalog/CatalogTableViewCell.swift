
import UIKit

class CatalogTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCatalog: UIImageView!
    
    @IBOutlet weak var textCatalog: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgCatalog.layer.cornerRadius = imgCatalog.frame.width / 2
        imgCatalog.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
