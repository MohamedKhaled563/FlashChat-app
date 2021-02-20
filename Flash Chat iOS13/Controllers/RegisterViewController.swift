

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let safeError = error {
                    let alert = UIAlertController(title: "Registering Error", message: safeError.localizedDescription, preferredStyle: .alert)
                    let action = UIAlertAction(title: "Try again", style: .default, handler: nil)
                    alert.addAction(action)
                    self.present(alert, animated: true, completion: nil)
                } else {
                    self.emailTextfield.text?.removeAll()
                    self.passwordTextfield.text?.removeAll()
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }

    
}
