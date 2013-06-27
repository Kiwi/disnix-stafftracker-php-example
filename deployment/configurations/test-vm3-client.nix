{pkgs, ...}:

{
  services = {
    openssh = {
      enable = true;
    };
    
    disnix = {
      enable = true;
    };
    
    xserver = {
      enable = true;
      
      displayManager = {
        slim.enable = false;
        auto.enable = true;
      };
      
      windowManager = {
        default = "icewm";
        icewm = {
          enable = true;
        };
      };
      
      desktopManager.default = "none";
    };
  };
  
  environment = {
    systemPackages = [
      pkgs.mc
      pkgs.subversion
      pkgs.lynx
      pkgs.firefox
    ];
  };  
}
