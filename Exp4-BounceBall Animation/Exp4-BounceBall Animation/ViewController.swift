import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView1 : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView1.layer.borderWidth = 1
        imageView1.layer.masksToBounds = true
        imageView1.layer.borderColor = UIColor.blue.cgColor
        imageView1.layer.cornerRadius = imageView1.frame.height/2
        imageView1.clipsToBounds = true
        UIImageView.animate(withDuration: 1, animations:{
            self.imageView1.frame.origin.y-=200
        }){_ in
            UIView.animateKeyframes(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {self.imageView1.frame.origin.y+=200})
        }
    }


}

