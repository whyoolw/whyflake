{ pkgs
, config
, lib
, ...
}:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        libva
        vaapiVdpau
        libvdpau-va-gl
        nvidia-vaapi-driver
        intel-media-driver
        vaapi-intel-hybrid
        intel-vaapi-driver
      ];
      extraPackages32 = with pkgs.pkgsi686Linux; [
        vaapiVdpau
        libvdpau-va-gl
        nvidia-vaapi-driver
        intel-media-driver
        vaapi-intel-hybrid
        intel-vaapi-driver
      ];
    };
    nvidia = {
      open = true;
      nvidiaSettings = false;
      modesetting.enable = true;
      powerManagement.enable = true;
      forceFullCompositionPipeline = true;
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "575.64";
        sha256_64bit = "sha256-6wG8/nOwbH0ktgg8J+ZBT2l5VC8G5lYBQhtkzMCtaLE=";
        openSha256 = "sha256-y93FdR5TZuurDlxc/p5D5+a7OH93qU4hwQqMXorcs/g=";
        settingsSha256 = lib.fakeSha256;
        persistencedSha256 = lib.fakeSha256;
        sha256_aarch64 = lib.fakeSha256;
      };
      prime = {
       # sync.enable = true;
        nvidiaBusId = "PCI:14:0:0";
        intelBusId = "PCI:0:2:0";
      };
    };
  };
  environment = {
    systemPackages = with pkgs; [
      egl-wayland
      nvidia-system-monitor-qt
    ];
    variables = {
      LIBVA_DRIVER_NAME = "nvidia";
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      NVD_BACKEND = "direct";
    };
  };
}
