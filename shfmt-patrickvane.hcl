description = "A shell formatter fork with unique options for POSIX Shell, Bash, and mksh"
test = "shfmt-patrickvane --version"
binaries = ["shfmt-patrickvane"]
repository = "https://github.com/patrickvane/shfmt"

platform "darwin" "amd64" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_darwin_amd64"

  on "unpack" {
    rename {
      from = "${root}/shfmt_darwin_amd64"
      to = "${root}/shfmt-patrickvane"
    }
  }
}

platform "darwin" "386" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_darwin_386"

  on "unpack" {
    rename {
      from = "${root}/shfmt_darwin_386"
      to = "${root}/shfmt-patrickvane"
    }
  }
}

platform "linux" "amd64" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_linux_amd64"

  on "unpack" {
    rename {
      from = "${root}/shfmt_linux_amd64"
      to = "${root}/shfmt-patrickvane"
    }
  }
}

platform "linux" "386" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_linux_386"

  on "unpack" {
    rename {
      from = "${root}/shfmt_linux_386"
      to = "${root}/shfmt-patrickvane"
    }
  }
}

platform "linux" "arm" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_linux_arm"

  on "unpack" {
    rename {
      from = "${root}/shfmt_linux_arm"
      to = "${root}/shfmt-patrickvane"
    }
  }
}

platform "windows" "amd64" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_windows_amd64.exe"

  on "unpack" {
    rename {
      from = "${root}/shfmt_windows_amd64.exe"
      to = "${root}/shfmt-patrickvane.exe"
    }
  }
}

platform "windows" "386" {
  source = "https://github.com/patrickvane/shfmt/releases/download/${version}/shfmt_windows_386.exe"

  on "unpack" {
    rename {
      from = "${root}/shfmt_windows_386.exe"
      to = "${root}/shfmt-patrickvane.exe"
    }
  }
}

version "master" {
  auto-version {
    github-release = "patrickvane/shfmt"
  }
}

sha256sums = {
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_darwin_amd64": "16265baaf94bd167f93e4cd620ef0006d3a102a879f295260248e64a69b315ff",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_darwin_386": "a8d240f90fe9e1b3166f8bdefc55e17da135ce8016cba060b991741767e257c2",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_amd64": "ef286f12446dcedc3ef7993102eac5a06b330518962edb8c6844886cde255e11",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_386": "14fa0f7bc3ffeb8035d7ed086870c9a5898da96c0bb6d246ff7348a11604af03",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_arm": "0578d7d71a1371fb80442f53de70975bc412e52dad931fa1ac7b468027e6e09c",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_windows_amd64.exe": "fd462048d0d644912126622cf4118b986c4f8f4fb372801d3385954d617350ff",
  "https://github.com/patrickvane/shfmt/releases/download/master/shfmt_windows_386.exe": "4c2c14a5fe614f65ad21e3866a4e4e22b42474a274ede4831ecec2e964cd6e5c",
}
