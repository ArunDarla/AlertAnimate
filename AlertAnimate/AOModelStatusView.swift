//
//  AOModelStatusView.swift
//  AlertAnimate
//
//  Created by VIPadm on 28/03/21.
//

import UIKit

public class AOModelStatusView: UIView {

  
    @IBOutlet weak var sampleImg: UIImageView!
    @IBOutlet weak var headlineLbl: UILabel!
    @IBOutlet weak var subTitleLbl: UILabel!
    
    let nibName = "AOModelStatusView"
    var contentView: UIView!
    var timer: Timer?
    
    
    // MARK: Set Up View
    public override init(frame: CGRect) {
     // For use in code
      super.init(frame: frame)
      setUpView()
    }

    public required init?(coder aDecoder: NSCoder) {
       // For use in Interface Builder
       super.init(coder: aDecoder)
      setUpView()
    }

    
    private func setUpView(){
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        
        self.contentView = (nib.instantiate(withOwner: self, options: nil).first as! UIView)
        addSubview(contentView)
        
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        headlineLbl.text = ""
        subTitleLbl.text = ""
        
    }
    
    // Provide functions to update view
    public func set(image: UIImage) {
        self.sampleImg.image = image
    }
     public func set(headline text: String) {
        self.headlineLbl.text = text
    }
    public func set(subheading text: String) {
        self.subTitleLbl.text = text
    }
    
    public override func didMoveToSuperview() {
        // Add a timer to remove the view
            self.timer = Timer.scheduledTimer(
                timeInterval: TimeInterval(3.0),
                target: self,
                selector: #selector(self.removeSelf),
                userInfo: nil,
                repeats: false)
    }
    @objc private func removeSelf() {
        self.removeFromSuperview()
    }
   
}
