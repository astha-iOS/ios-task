import UIKit


/**
 A custom label that has some padding between its frame and its displayed text. Configurable in Interface Builder.
 */
@IBDesignable
class LabelWithPadding: UILabel {

    /** The padding (in points). Will be added to all edges. */
    // set the padding is zero according to the requirement. 
    @IBInspectable var padding: CGFloat = 0

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)))
    }

    override var intrinsicContentSize: CGSize {
        let originalSize = super.intrinsicContentSize
        return CGSize(width: originalSize.width + padding * 2, height: originalSize.height + padding * 2)
    }
}
