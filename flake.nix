{
  inputs.context-minimals.url = "github:usertam/context-minimals";
  inputs.fiziko.url = "github:jemmybutton/fiziko";
  inputs.fiziko.flake = false;

  outputs = { self, context-minimals, fiziko }: {
    packages = context-minimals.lib.mkCompilation {
      src = self;
      postUnpack = "install -Dt $sourceRoot ${fiziko}/fiziko.mp";
    };
    apps = context-minimals.lib.mkCompilationApps { };
  };
}
