{
  inputs.context-minimals.url = "github:usertam/context-minimals";
  inputs.fiziko.url = "github:jemmybutton/fiziko";
  inputs.fiziko.flake = false;

  outputs = { self, context-minimals, ... }@inputs: {
    packages = context-minimals.lib.mkCompilation {
      src = self;
      postUnpack = "install -Dt $sourceRoot ${inputs.fiziko}/fiziko.mp";
    };
    apps = context-minimals.lib.mkCompilationApps { };
  };
}
