{
  inputs.context-minimals.url = "github:usertam/context-minimals";
  inputs.cover.url = "https://unsplash.com/photos/7K1_uSnNoy4/download";
  inputs.cover.flake = false;

  outputs = { self, context-minimals, ... }@inputs: {
    packages = context-minimals.lib.mkCompilation {
      src = self;
      nativeBuildInputs = [ "imagemagick" ];
      postUnpack = ''
        convert -quality 100% -despeckle -rotate 180 \
          ${inputs.cover} "$sourceRoot/$(basename ${inputs.cover})"
      '';
    };
    apps = context-minimals.lib.mkCompilationApps { };
  };
}
