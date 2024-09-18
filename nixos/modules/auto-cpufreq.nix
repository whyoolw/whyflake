{ ...
}: 
{
  services = {
    power-profiles-daemon.enable = false;
    auto-cpufreq = {
      enable = true;
      settings = {
        charger = {
          governor = "performance";
          scaling_min_freq = 1600000;
          scaling_max_freq = 3800000;
          turbo = "never";
        };

        battery = {
          governor = "powersave";
          scaling_min_freq = 400000;
          scaling_max_freq = 2000000;
          turbo = "never";
        };
      };
    };
  };
}