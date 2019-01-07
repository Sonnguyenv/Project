
import UIKit

class SegementedVC: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    
    private lazy var ShopViewController : UIViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ShopViewController") as! ShopViewController
        addChild(viewController)
        return viewController
    }()
    
    private lazy var CatalogViewController : UIViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "CatalogViewController") as! CatalogViewController
        addChild(viewController)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView()
    }
    static func viewController() -> SegementedVC {
        return UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SegementedVC") as! SegementedVC
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        containerView.addSubview(viewController.view)
        viewController.view.frame = containerView.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.didMove(toParent: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
    
    private func updateView() {
        if segmentControl.selectedSegmentIndex == 0 {
            remove(asChildViewController: CatalogViewController)
            add(asChildViewController: ShopViewController)
        }else {
            remove(asChildViewController: ShopViewController)
            add(asChildViewController: CatalogViewController)
        }
    }
    
    func setupView() {
        updateView()
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        updateView()
    }
}
