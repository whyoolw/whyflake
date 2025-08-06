{
  services.thinkfan = {
      enable = true;
      smartSupport = true;
      sensors =
        [
          {
            query = "/proc/acpi/ibm/thermal";
            type = "tpacpi";
            indices = [ 0 1 2 3 4 5 6 ];
          }
        ];

      levels = [
        ["level auto" 0 55]
        [7 60 75]
        ["level full-speed" 74 32767]
      ];
    };
}