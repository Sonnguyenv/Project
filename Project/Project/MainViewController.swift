
import UIKit

class MainViewController: UIViewController {
    
    var page: PageViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PageViewController,
            segue.identifier == "PageViewController" {
            self.page = vc
        }
    }
    
    @IBAction func preMain(_ sender: Any) {
        page?.moveToPage(0)
    }
    
    @IBAction func nextCatalog(_ sender: Any) {
        page?.moveToPage(1)
    }
}
