

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet var messageBubble: UIView!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble .frame.size.height / 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
