import XCTest
@testable import Frames

final class FramesTests: XCTestCase {
    func testAndPrint() throws {
		
		let fm = FileManager.default
		let urls = try! fm.contentsOfDirectory(at: Bundle.module.resourceURL!, includingPropertiesForKeys: nil)
		let frames = Frames()
		
		var count = 0
		
		var properties = ""
		var tests = ""
		
		for url in urls.sorted(by:  { $0.lastPathComponent < $1.lastPathComponent } ) {
			
			guard url.pathExtension == "png" else {
				continue
			}
			
			let name = url.lastPathComponent
			
			XCTAssertNoThrow(try frames.frame(named: name))
			let propertyName = url.deletingPathExtension().lastPathComponent.camelized
			count += 1
			properties.append("var \(propertyName): Frame { try! frame(named: \"\(name)\") } \n")
			tests.append("_ = frames.\(propertyName)\n")
		}
		
		print(
  """
  
  
  Copy the following to Frames.swift:
  ***********************************
  \(properties)
  ***********************************
  
  
  
  Copy the following to testProperties:
  +++++++++++++++++++++++++++++++++++
  \(tests)
  +++++++++++++++++++++++++++++++++++
  
  
  """
		)
		
		XCTAssertEqual(count, 173)
    }
	
	func testProperties() {
		let frames = Frames()
		_ = frames.appleMacbookPro13Silver
		_ = frames.appleMacbookPro13SpaceGray
		_ = frames.appleMacbookPro15Silver
		_ = frames.appleMacbookPro15SpaceGray
		_ = frames.appleIPad102Gold
		_ = frames.appleIPad102Silver
		_ = frames.appleIPad102SpaceGray
		_ = frames.appleIPadAir20192Gold
		_ = frames.appleIPadAir20192Silver
		_ = frames.appleIPadAir20192SpaceGray
		_ = frames.appleIPadAir20192020GreenPortrait
		_ = frames.appleIPadAir20192020RoseGoldPortrait
		_ = frames.appleIPadAir20192020SilverPortrait
		_ = frames.appleIPadAir20192020SkyBluePortrait
		_ = frames.appleIPadAir20192020SpaceGrayPortrait
		_ = frames.appleIPadAir2019Gold
		_ = frames.appleIPadAir2019Silver
		_ = frames.appleIPadAir2019SpaceGray
		_ = frames.appleIPadMini2019Gold
		_ = frames.appleIPadMini2019Silver
		_ = frames.appleIPadMini2019SpaceGray
		_ = frames.appleIPadPro11InchSilver
		_ = frames.appleIPadPro11InchSpaceGray
		_ = frames.appleIPadPro129Inch4thGenerationSilver
		_ = frames.appleIPadPro129Inch4thGenerationSpaceGray
		_ = frames.appleIPadProGold
		_ = frames.appleIPadProSilver
		_ = frames.appleIPadProSpaceGray
		_ = frames.appleIPhone11Black
		_ = frames.appleIPhone11Green
		_ = frames.appleIPhone11ProGold
		_ = frames.appleIPhone11ProMaxGold
		_ = frames.appleIPhone11ProMaxMidnightGreen
		_ = frames.appleIPhone11ProMaxSilver
		_ = frames.appleIPhone11ProMaxSpaceGray
		_ = frames.appleIPhone11ProMidnightGreen
		_ = frames.appleIPhone11ProSilver
		_ = frames.appleIPhone11ProSpaceGray
		_ = frames.appleIPhone11Purple
		_ = frames.appleIPhone11Red
		_ = frames.appleIPhone11White
		_ = frames.appleIPhone11Yellow
		_ = frames.appleIPhone12Black
		_ = frames.appleIPhone12Blue
		_ = frames.appleIPhone12Green
		_ = frames.appleIPhone12MiniBlack
		_ = frames.appleIPhone12MiniBlue
		_ = frames.appleIPhone12MiniGreen
		_ = frames.appleIPhone12MiniRed
		_ = frames.appleIPhone12MiniWhite
		_ = frames.appleIPhone12ProGold
		_ = frames.appleIPhone12ProGraphite
		_ = frames.appleIPhone12ProMaxGold
		_ = frames.appleIPhone12ProMaxGraphite
		_ = frames.appleIPhone12ProMaxPacificBlue
		_ = frames.appleIPhone12ProMaxSilver
		_ = frames.appleIPhone12ProPacificBlue
		_ = frames.appleIPhone12ProSilver
		_ = frames.appleIPhone12Red
		_ = frames.appleIPhone12White
		_ = frames.appleIPhone5cBlue
		_ = frames.appleIPhone5cGreen
		_ = frames.appleIPhone5cRed
		_ = frames.appleIPhone5cWhite
		_ = frames.appleIPhone5cYellow
		_ = frames.appleIPhone5sGold
		_ = frames.appleIPhone5sSilver
		_ = frames.appleIPhone5sSpaceGray
		_ = frames.appleIPhone6sGold
		_ = frames.appleIPhone6sPlusGold
		_ = frames.appleIPhone6sPlusRoseGold
		_ = frames.appleIPhone6sPlusSilver
		_ = frames.appleIPhone6sPlusSpaceGray
		_ = frames.appleIPhone6sRoseGold
		_ = frames.appleIPhone6sSilver
		_ = frames.appleIPhone6sSpaceGray
		_ = frames.appleIPhone7Gold
		_ = frames.appleIPhone7JetBlack
		_ = frames.appleIPhone7MatteBlack
		_ = frames.appleIPhone7PlusGold
		_ = frames.appleIPhone7PlusJetBlack
		_ = frames.appleIPhone7PlusMatteBlack
		_ = frames.appleIPhone7PlusRoseGold
		_ = frames.appleIPhone7PlusSilver
		_ = frames.appleIPhone7RoseGold
		_ = frames.appleIPhone7Silver
		_ = frames.appleIPhone8Gold
		_ = frames.appleIPhone8PlusGold
		_ = frames.appleIPhone8PlusSilver
		_ = frames.appleIPhone8PlusSpaceGray
		_ = frames.appleIPhone8Silver
		_ = frames.appleIPhone8SpaceGray
		_ = frames.appleIPhoneSEBlack
		_ = frames.appleIPhoneSERed
		_ = frames.appleIPhoneSEWhite
		_ = frames.appleIPhoneXSilver
		_ = frames.appleIPhoneXSpaceGray
		_ = frames.appleIPhoneXRBlue
		_ = frames.appleIPhoneXRCoral
		_ = frames.appleIPhoneXRRed
		_ = frames.appleIPhoneXRSilver
		_ = frames.appleIPhoneXRSpaceGray
		_ = frames.appleIPhoneXRYellow
		_ = frames.appleIPhoneXSGold
		_ = frames.appleIPhoneXSMaxGold
		_ = frames.appleIPhoneXSMaxSilver
		_ = frames.appleIPhoneXSMaxSpaceGray
		_ = frames.appleIPhoneXSSilver
		_ = frames.appleIPhoneXSSpaceGray
		_ = frames.googlePixel3ClearlyWhite
		_ = frames.googlePixel3JustBlack
		_ = frames.googlePixel3NotPink
		_ = frames.googlePixel3XLClearlyWhite
		_ = frames.googlePixel3XLJustBlack
		_ = frames.googlePixel3XLNotPink
		_ = frames.googlePixel4ClearlyWhite
		_ = frames.googlePixel4JustBlack
		_ = frames.googlePixel4OhSoOrange
		_ = frames.googlePixel4XLClearlyWhite
		_ = frames.googlePixel4XLJustBlack
		_ = frames.googlePixel4XLOhSoOrange
		_ = frames.googlePixel5JustBlack
		_ = frames.googlePixel5SortaSage
		_ = frames.googlePixelSlate
		_ = frames.huaweiP8Black
		_ = frames.huaweiP8White
		_ = frames.motorolaMotoEBlack
		_ = frames.motorolaMotoEWhite
		_ = frames.motorolaMotoG
		_ = frames.nexus4
		_ = frames.nexus5x
		_ = frames.nexus6P
		_ = frames.nexus9
		_ = frames.samsungGalaxyNote10AuraBlack
		_ = frames.samsungGalaxyNote10AuraGlow
		_ = frames.samsungGalaxyNote10AuraPink
		_ = frames.samsungGalaxyNote10AuraRed
		_ = frames.samsungGalaxyNote10AuraWhite
		_ = frames.samsungGalaxyNote10PlusAuraBlack
		_ = frames.samsungGalaxyNote10PlusAuraBlue
		_ = frames.samsungGalaxyNote10PlusAuraGlow
		_ = frames.samsungGalaxyNote10PlusAuraWhite
		_ = frames.samsungGalaxyS10FlamingoPink
		_ = frames.samsungGalaxyS10PrismBlack
		_ = frames.samsungGalaxyS10PrismBlue
		_ = frames.samsungGalaxyS10PrismGreen
		_ = frames.samsungGalaxyS10PrismWhite
		_ = frames.samsungGalaxyS10PlusCeramicWhite
		_ = frames.samsungGalaxyS10PlusFlamingoPink
		_ = frames.samsungGalaxyS10PlusPrismBlack
		_ = frames.samsungGalaxyS10PlusPrismBlue
		_ = frames.samsungGalaxyS10PlusPrismGreen
		_ = frames.samsungGalaxyS10PlusPrismWhite
		_ = frames.samsungGalaxyS3
		_ = frames.samsungGalaxyS5Black
		_ = frames.samsungGalaxyS5White
		_ = frames.samsungGalaxyS7Black
		_ = frames.samsungGalaxyS7Gold
		_ = frames.samsungGalaxyS7Silver
		_ = frames.samsungGalaxyS7White
		_ = frames.samsungGalaxyS8ArcticSilver
		_ = frames.samsungGalaxyS8CoralBlue
		_ = frames.samsungGalaxyS8MapleGold
		_ = frames.samsungGalaxyS8MidnightBlack
		_ = frames.samsungGalaxyS8OrchidGray
		_ = frames.samsungGalaxyS9BurgundyRed
		_ = frames.samsungGalaxyS9CoralBlue
		_ = frames.samsungGalaxyS9LilacPurple
		_ = frames.samsungGalaxyS9MidnightBlack
		_ = frames.samsungGalaxyS9SunriseGold
		_ = frames.samsungGalaxyS9TitaniumGray
		_ = frames.surfaceProXBlack
		_ = frames.surfaceProXSilver
	}
}




// https://gist.github.com/reitzig/67b41e75176ddfd432cb09392a270218
extension String {
	
	static private let badChars = CharacterSet.alphanumerics.inverted
	
	var uppercasingFirst: String {
		return prefix(1).uppercased() + dropFirst()
	}

	var lowercasingFirst: String {
		return prefix(1).lowercased() + dropFirst()
	}

	var camelized: String {
		guard !isEmpty else {
			return ""
		}
		
		let string = self.replacingOccurrences(of: "+", with: " Plus ")

		let parts = string.components(separatedBy: Self.badChars)

		let first = String(describing: parts.first!).lowercasingFirst
		let rest = parts.dropFirst().map({String($0).uppercasingFirst})

		return ([first] + rest).joined(separator: "")
	}
}
