--- Generated by h-lua-cli(https://github.com/hunzsig-warcraft3/h-lua-sdk)

require "h-lua" -- h-lua库
require "scripts.alias" -- alias h-lua库别称（参考）
require "scripts.setup" -- setup 游戏准备
require "scripts.ui" -- UI

-- h-lua main function 主函数入口
-- The game starts here 游戏从main函数开始运行
function main()

    SETUP()
    UI()

    print("hello world!")
    echo("你好，世界！")

end