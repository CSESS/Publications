{
  inputs.context-minimals.url = "github:usertam/context-minimals";
  inputs.cover.url = "https://unsplash.com/photos/ixxjruC7Gg4/download";
  inputs.cover.flake = false;

  outputs = { self, context-minimals, ... }@inputs:
  let
    fonts = [ "source-sans-pro" "source-han-serif" ];
    fcache = [ "sourcehanserif" ];
  in {
    packages = context-minimals.lib.mkCompilation {
      inherit fonts fcache;
      src = self;
      nativeBuildInputs = [ "imagemagick" ];
      postUnpack = ''
        convert -despeckle -quality 100% \
          -rotate 270 -crop 3000x2625+750+375 -modulate 100,80,110 \
          -alpha set -channel A \
            -sparse-color barycentric '0,%[fx:h*0.75] white 0,%h none' +channel \
          ${inputs.cover} "$sourceRoot/cover-2.png"
      '';
    };
    apps = context-minimals.lib.mkCompilationApps {
      inherit fonts fcache;
    };
  };
}
