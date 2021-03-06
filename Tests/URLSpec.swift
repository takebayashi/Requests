import Spectre
@testable import Requests


func describeURL() {
  describe("URL") {
    $0.describe("when parsing from a string") {
      let url = URL(string: "http://fuller.li/posts")

      $0.it("can parse the scheme") {
        try expect(url?.scheme) == "http"
      }

      $0.it("can parse the hostname") {
        try expect(url?.hostname) == "fuller.li"
      }

      $0.it("can parse the path") {
        try expect(url?.path) == "/posts"
      }

      $0.it("defaults HTTP port to 80") {
        try expect(url?.port) == 80
      }
    }
  }
}
