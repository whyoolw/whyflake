{
    pkgs,
    lib,
    ...
}: 

{
    programs = {
        fuzzel = {
            settings = {
                main = {
                    terminal = "${lib.getExe pkgs.ghostty}";
                    layer = "overlay";
                    prompt = "  > ";
                };

                border = {
                    width = "2";
                    radius = "10";
                };
            };
        };
    };
}