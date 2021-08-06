{ pkgs, ... }: {
  dconf.enable = false;
  xdg = {
    enable = true;
    userDirs.enable = true;
  };
  gtk = {
    enable = true;
    theme = {
      package = pkgs.materia-theme;
      name = "Materia-dark-compact";
    };
    gtk3.extraConfig = { gtk-application-prefer-dark-theme = 1; };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    font = {
      package = pkgs.fira;
      name = "Iosevka Aile Regular 11";
    };
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
  };
  xsession.pointerCursor = {
    package = pkgs.vanilla-dmz;
    name = "Vanilla-DMZ";
    size = 16;
  };
}
