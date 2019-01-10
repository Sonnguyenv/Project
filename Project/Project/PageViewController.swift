
import UIKit

class PageViewController: UIPageViewController {
    lazy var subViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShopViewController") as! ShopViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CatalogViewController") as! CatalogViewController
        ]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
}

extension PageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func moveToPage(_ index: Int) {
        if index == 0 {
            setViewControllers([subViewControllers[0]], direction: .reverse, animated: true, completion: nil)
        } else {
            setViewControllers([subViewControllers[1]], direction: .forward, animated: true, completion: nil)
        }
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = subViewControllers.index(of: viewController) ?? 0
        if currentIndex <= 0 {
            return nil
        }
        return subViewControllers[currentIndex-1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex = subViewControllers.index(of: viewController) ?? 0
        if currentIndex >= subViewControllers.count-1 {
            return nil
        }
        return subViewControllers[currentIndex+1]
    }
}
