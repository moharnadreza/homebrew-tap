cask "blipsy" do
  version "0.1.1"
  sha256 "c657082538eabc8660c1f41da9e7414455755eca7f2794d8d60291b72a65dc1d"

  url "https://github.com/moharnadreza/blipsy/releases/download/v#{version}/blipsy.dmg"
  name "blipsy"
  desc "Menu bar app that shows your internet connection at a glance"
  homepage "https://github.com/moharnadreza/blipsy"

  depends_on macos: ">= :ventura"

  app "blipsy.app"

  caveats <<~CAVEATS
    blipsy is not signed with an Apple Developer ID. On first launch, right-click
    blipsy in Applications and choose Open, or allow it under
    System Settings > Privacy & Security. To skip that prompt, install with:
      brew install --cask --no-quarantine moharnadreza/tap/blipsy
  CAVEATS
end
