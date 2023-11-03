import XCTest

final class ShowcaseTests: XCTestCase {
    func testButtons() throws {
        let app = XCUIApplication()
        app.launch()

        app.buttons["Buttons"].tap()

        XCTAssert(app.buttons["Primary"].exists)
        XCTAssert(app.buttons["Secondary"].exists)
        XCTAssert(app.buttons["Tertiary"].exists)

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Buttons"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
