
import UIKit

class OtherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var picture2: UIImageView!
    
    @IBOutlet weak var lable2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        picture2.layer.cornerRadius = picture2.frame.width / 2
        picture2.clipsToBounds = true
    }
}
