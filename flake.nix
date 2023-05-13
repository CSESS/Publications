{
  inputs.context-minimals.url = "github:usertam/context-minimals";
  outputs = { self, context-minimals, ... }@inputs:
  let
    fonts = [ "source-sans-pro" "source-han-serif" ];
    fcache = [ "sourcehanserif" ];
    
  in {
    packages = context-minimals.lib.mkCompilation { inherit fonts fcache; src = self; };
    apps = context-minimals.lib.mkCompilationApps { inherit fonts fcache; };
  };
}
