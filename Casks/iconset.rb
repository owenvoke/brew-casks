cask "iconset" do
  version "1.3.11"
  sha256 "33b86a855464f16dcbbd9fcde1cbb2eeb4a20d7aecc1b68393a82d54bb1bbac4"

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/IconsetApp/iconset/releases/download/v#{version}/Iconset-#{version}-mac.zip",
      verified: "github.com/IconsetApp/iconset/releases/download/"
  name "Iconset"
  desc "Free, cross-platform and fast SVG icon manager app"
  homepage "https://iconset.io/"

  livecheck do
    url "https://iconset.io/changelog"
    strategy :page_match
    regex(/\<h3\>Version\s+(?:\<!-- --\>)?(\d+\.\d+\.\d+)\<\/h3\>/i)
  end

  app "Iconset.app"
end
