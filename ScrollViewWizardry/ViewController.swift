//
//  ViewController.swift
//  ScrollViewWizardry
//
//  Created bx Will Bishop on 29/12/18.
//  Copxright © 2018 Will Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    var blueBackgroundView = UIView()
    var whiteBackgroundView = WhiteView()
    var scrolled = false
    var containerSize: CGSize {
        return CGSize(width: scrollView.frame.size.width, height: scrollView.frame.size.height)
    }
    
    var peekAmount: CGFloat {
        return 265
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueBackgroundView = Bundle.main.loadNibNamed("BlueBackground", owner: self, options: nil)!.first as! UIView
        whiteBackgroundView = Bundle.main.loadNibNamed("WhiteBackground", owner: self, options: nil)!.first as! WhiteView
        scrollView.delaysContentTouches = false
        scrollView.isExclusiveTouch = false
        scrollView.frame.origin.y = self.view.safeAreaInsets.top
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.clipsToBounds = false
        scrollView.addSubview(blueBackgroundView)
        scrollView.addSubview(whiteBackgroundView)
        
        var yPosition: CGFloat = 0
        blueBackgroundView.frame.origin = CGPoint(x: 0, y: yPosition)
        blueBackgroundView.frame.size.height = view.frame.height - peekAmount
        yPosition = blueBackgroundView.frame.maxY
        whiteBackgroundView.frame.origin.y = yPosition
        scrollView.contentSize.width = self.view.frame.width
        scrollView.contentSize.height = blueBackgroundView.frame.height + whiteBackgroundView.frame.height
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        print("oh no")
        return false
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        guard scrolled else {return}
        let maximumVerticalOffset = scrollView.contentSize.height - scrollView.frame.height
        let currentVerticalOffset = scrollView.contentOffset.y
        
        let percentageVerticalOffset = currentVerticalOffset / maximumVerticalOffset
        
        print(percentageVerticalOffset)
    }
    func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
        print()
    }
    
    func animateScrollLabel(){
        
    }
    
   
    
}

