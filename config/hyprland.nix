{ config, pkgs, ... }: {
  services.cliphist.enable = true;
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      monitor = [
        "eDP-1, highres, auto, 1"
        "desc:Dell Inc. DELL E196FP KC14766960KL, 1280x1024, auto, 1"
        ", highres, auto, 1"
      ];

      dwindle = {
        preserve_split = true;
        force_split = 2;
      };

      input = {
        kb_layout = "us, ru";
        kb_options = "grp:win_space_toggle";
      };

      general = {
        border_size = 2;
        "col.active_border" = "rgba(ffffffff)";
        "col.inactive_border" = "rgba(444444ff)";

        gaps_in = 10;
        gaps_out = 20;
      };

      decoration = {
        active_opacity = 0.8;
        inactive_opacity = 0.5;

        rounding = 10;

        shadow_range = 20;

        blur = {
          enabled = true;
          size = 2;
          passes = 6;
        };
      };

      exec-once = [
        "waybar"
      ];

      workspace = [
        "1,monitor:eDP-1"
        "2,monitor:eDP-1"
        "3,monitor:eDP-1"
        "4,monitor:eDP-1"
        "5,monitor:eDP-1"
        "6,monitor:eDP-1"
        "7,monitor:eDP-1"
        "8,monitor:HDMI-A-1"
        "9,monitor:HDMI-A-1"
        "10,monitor:HDMI-A-1"
      ];

      bind = [
        # tiling
        "SUPER, ESCAPE, killactive"
        "SUPER SHIFT, F, togglefloating"
        ", F11, fullscreen"

        "SUPER,1,workspace,1"
        "SUPER,2,workspace,2"
        "SUPER,3,workspace,3"
        "SUPER,4,workspace,4"
        "SUPER,5,workspace,5"
        "SUPER,6,workspace,6"
        "SUPER,7,workspace,7"
        "SUPER,8,workspace,8"
        "SUPER,9,workspace,9"
        "SUPER,0,workspace,10"

        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2" 
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "SUPER SHIFT, 6, movetoworkspace, 6"
        "SUPER SHIFT, 7, movetoworkspace, 7"
        "SUPER SHIFT, 8, movetoworkspace, 8"
        "SUPER SHIFT, 9, movetoworkspace, 9"
        "SUPER SHIFT, 0, movetoworkspace, 10"

        # programs
        "SUPER, RETURN, exec, kitty"
        "SUPER, B, exec, firefox"
        "SUPER ALT, B, exec, firefox --private-window"
        "SUPER CONTROL ALT SHIFT, T, exec, telegram-desktop"
        "SUPER, O, exec, obs"
        "SUPER, C, exec, hyprpicker -a --format=hex"
        "SUPER ALT, C, exec, hyprpicker -a --format=rgb"
        "SUPER, D, exec, wofi --show drun"

        # media
        ", XF86AudioRaiseVolume, exec, amixer sset Master 5%+"
        ", XF86AudioLowerVolume, exec, amixer sset Master 5%-"
        ", XF86AudioMute, exec, amixer sset Master toggle"

        ", XF86MonBrightnessUp, exec, brightnessctl set 5%+"
        ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"

        ", XF86KbdBrightnessUp, exec, brightnessctl --device=rgb:kbd_backlight set 20%+"
        ", XF86KbdBrightnessDown, exec, brightnessctl --device=rgb:kbd_backlight set 20%-"

        # system
        "SUPER SHIFT, R, exec, reboot"
        "SUPER SHIFT, P, exec, poweroff"
        "SUPER SHIFT, L, exit"
      ];

      bindm = [
        "SUPER, mouse:273, resizewindow"
        "SUPER, ALT_L, resizewindow"
        "SUPER, mouse:272, movewindow"
        "SUPER, Control_L, movewindow"
      ];


      bezier = [
        "easeInQuint, 0.64, 0, 0.78, 0"
        "easeOutQuint, 0.22, 1, 0.36, 1"
        "easeInOutQuint, 0.83, 0, 0.17, 1"

        "easeInBack, 0.36, 0, 0.66, -0.56"
        "easeOutBack, 0.34, 1.56, 0.64, 1"
        "easeInOutBack, 0.68, -0.6, 0.32, 1.6"
      ];

      animation = [
        "windowsIn, 1, 3, easeOutBack"
        "windowsOut, 1, 3, easeOutBack"
        "windowsMove, 1, 3, easeOutQuint"

        "fadeIn, 1, 3, easeOutQuint"

        "workspaces, 1, 3, easeInBack"
      ];

      windowrulev2 = [
        
      ];

      layerrule = [
        
      ];
    };
  };
}





























