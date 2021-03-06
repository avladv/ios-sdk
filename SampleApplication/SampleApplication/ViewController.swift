
import UIKit
import OSXScanLib

class ViewController: ScanViewController {

    @IBOutlet weak var vinLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        vinLabel.text = "";
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        super.setLaserRendererClass(DataMatrixLaserRenderer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func back() {
        dismiss(animated: true, completion: nil)
    }
    
    func setResult(_ result: String) {
        vinLabel.text = result;
    }
}
