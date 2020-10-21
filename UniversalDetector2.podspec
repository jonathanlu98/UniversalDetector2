Pod::Spec.new do |s|
  s.name          = 'UniversalDetector2'
  s.version       = '2.0.0'
  s.license       = { type: 'Mozilla Public License', file: 'LICENSE' }
  s.summary       =  'Wrapper of uchardet for Objective-C.'
  s.description   =  'UniversalDetector takes a sequence of bytes in an unknown character encoding without any additional information, and attempts to determine the encoding of the text.'
  s.homepage      = 'https://github.com/amake/UniversalDetector2'
  s.author        = { 'Aaron Madlon-Kay' => 'aaron@madlon-kay.com' }
  s.source        = { git: 'https://github.com/amake/UniversalDetector2.git',
                      tag: s.version.to_s,
                      submodules: true }

  s.source_files        = 'UniversalDetector/*.{h,m}', 'external/uchardet/src/**/*.{h,cpp}'
  s.public_header_files = 'UniversalDetector/*.h', 'external/uchardet/src/uchardet.h'
  s.preserve_paths      = 'external/uchardet/src/*.{tab}'

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.xcconfig = {
    'WARNING_CFLAGS' => '-Wno-shorten-64-to-32 -Wno-logical-op-parentheses'
  }

  s.library = 'c++'
  s.requires_arc = true
end
