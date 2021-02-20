
import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let title = K.appName
        var multiplier = 0.0
        for litter in title{
            Timer.scheduledTimer(withTimeInterval: 0.1 * multiplier , repeats: false) {_ in
                self.titleLabel.text?.append(litter)
            }
            multiplier += 1
        }
        print(Calendar.current)

    }
    
}


