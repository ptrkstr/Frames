import Foundation
#if canImport(UIKit)
import UIKit
public typealias Frame = UIImage
#elseif canImport(AppKit)
import AppKit
public typealias Frame = NSImage
#endif

public struct Frames {
	
    public init() {}
	
	public func frame(named name: String) throws -> Frame {
		let url = Bundle.module.resourceURL!.appendingPathComponent(name)
		let data = try Data(contentsOf: url)
		guard let frame = Frame(data: data) else {
			throw CocoaError(.fileReadUnknown)
		}
		return frame
	}
}
