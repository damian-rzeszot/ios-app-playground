import XCTest

final class ShowcaseTests: XCTestCase {
    func testButtons() throws {
        let app = XCUIApplication()
        app.launch()

        snapshot(name: "Main", app: app)

        app.buttons["Buttons"].tap()

        XCTAssert(app.buttons["Primary"].exists)
        XCTAssert(app.buttons["Secondary"].exists)
        XCTAssert(app.buttons["Tertiary"].exists)

        snapshot(name: "Buttons", app: app)
    }

    private func snapshot(name: String, app: XCUIApplication) {
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = name
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
