//
//  PopoverRootView.swift
//  Pomodoro
//
//  Created by Alberto Quesada Aranda on 13/6/16.
//  Copyright © 2016 Alberto Quesada Aranda. All rights reserved.
//

import Cocoa

class PopoverRootView: NSView {

    override func viewDidMoveToWindow() {
        self.wantsLayer = true
        let aFrameView = self.window?.contentView?.superview
        let a = PopoverBackgroundView(frame: aFrameView!.bounds)
        a.autoresizingMask = [.ViewWidthSizable, .ViewHeightSizable]
        aFrameView?.addSubview(a, positioned: NSWindowOrderingMode.Below, relativeTo: aFrameView)
        super.viewDidMoveToWindow()
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        // Drawing code here.
    }
    
}


class PopoverBackgroundView: NSView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func drawRect(rect: CGRect) {
        NSColor.init(red: 1, green:1, blue:1, alpha:1).set()
        //NSColor.init(red: 0.902, green:0.922, blue:0.878, alpha:1).set()
        //NSColor.init(red: 0.416, green: 0.482, blue: 0.553, alpha: 0.98).set()
        //NSColor.whiteColor().set()
        NSRectFill(self.bounds)
    }
}