# H-Lua

[![image](https://img.shields.io/badge/english-EN_US-blue.svg)](https://github.com/hunzsig-warcraft3/h-lua/blob/main/README_EN-US.md)
![image](https://img.shields.io/badge/license-MIT-blue.svg)
[![image](https://img.shields.io/badge/doc-技术文档-blue.svg)](http://wenku.hunzsig.org/?_=_1_5)
![image](https://img.shields.io/badge/version-1-blue.svg)
[![image](https://img.shields.io/badge/author-hunzsig-red.svg)](https://www.hunzsig.com)
[![image](https://img.shields.io/badge/QQ-325338043-green.svg)](https://qm.qq.com/cgi-bin/qm/qr?k=NYlOpKUo9vEUQ3gN_UBvRUci9avq0tqB&jump_from=webapi)

[![image](https://img.shields.io/badge/demo-你好世界-orange.svg)](https://github.com/hunzsig-warcraft3/w3x-h-lua-helloworld)
[![image](https://img.shields.io/badge/demo-秘地探奇-orange.svg)](https://github.com/hunzsig-warcraft3/w3x-mysterious-land)
[![image](https://img.shields.io/badge/test-DZAPI-lightgrey.svg)](https://github.com/hunzsig-warcraft3/w3x-test-dzapi)
[![image](https://img.shields.io/badge/test-崩溃压力-lightgrey.svg)](https://github.com/hunzsig-warcraft3/w3x-test-breakdown)

> 本套代码免费提供给了解lua的作者试用，如果不了解lua语言请使用T来制作地图或自行学习，此处不提供教学，本教程以YDWE为例

## 使用优势？
h-lua拥有优秀的demo，在开源的同时引导您学习的更多
包含多样丰富的属性系统，内置多达几十种以上的自定义事件,可以轻松做出平时难以甚至不能做出的技能效果。
强大的物品合成分拆，丰富自定义技能模板！免去自行编写！
计时器、环境、镜头、单位、敌人、音乐、天气、遮罩、任务等等应有尽有。

## 框架结构如下：
```
    ├── h-lua.lua - 入口文件，你的main文件需要包含它
    ├── const - 静态值
    │   ├── abilityTarget - 技能目标
    │   ├── attritube - 属性
    │   ├── attributeXtras - 属性Xtras
    │   ├── breakArmorType - 破防类型
    │   ├── cache - 缓存Keys
    │   ├── damageSource - 伤害来源
    │   ├── damageType - 伤害类型
    │   ├── enchant - 附魔值
    │   ├── event - 事件
    │   ├── hero - 英雄
    │   ├── hotKey - 热键
    │   ├── hSlkKeys - hslk使用键值
    │   ├── item - 物品
    │   ├── playerColor - 玩家颜色
    │   ├── target - 目标
    │   └── unit - 单位
    ├── foundation - 基础文件
    │   ├── blizzard_b.lua - 暴雪B全局变量
    │   ├── blizzard_c.lua - 暴雪C全局变量
    │   ├── blizzard_bj.lua - 暴雪部分BJ函数，实际无用，非要用bj就自行拓展编写载入
    │   ├── blizzard_def.lua - 实际无用，参考用途
    │   ├── cache.lua - 缓存
    │   ├── cmd.lua - 框架自带命令管理
    │   ├── color.lua - 颜色
    │   ├── debug.lua - 调试
    │   ├── echo.lua - 游戏荧幕打印
    │   ├── json.lua - json库
    │   ├── Mapping.lua - 值对库
    │   ├── math.lua - 计算库
    │   ├── md5.lua - MD5
    │   ├── runtime.lua - 运行时数据集
    │   ├── string.lua - 字符串库
    │   └── table.lua - 表库
    ├── lib
    │   ├── skill - 技能包
    │   ├── attrbute - 基础/拓展/伤害特效/自然/单位关联，万能属性系统，自由、强大
    │   ├── award.lua - 奖励模块，用于控制玩家的黄金木头经验
    │   ├── buff.lua - buff模块，可控状态管理
    │   ├── camera.lua - 镜头模块，用于控制玩家镜头
    │   ├── courier.lua - 默认的信使模块
    │   ├── dialog.lua - 对话框模块，用于显示对话框
    │   ├── dzapi.lua - Dzapi(配合./plugins/dzapi.jass使用)
    │   ├── effect.lua - 特效模块
    │   ├── enchant.lua - 附魔模块
    │   ├── enemy.lua - 敌人模块，用于设定敌人玩家，自动分配单位
    │   ├── env.lua - 环境模块，可随机为区域生成装饰物及地表纹理
    │   ├── event.lua - 事件模块，自定义事件，包括物品合成分拆/暴击，精确攻击捕捉等
    │   ├── group.lua - 单位组
    │   ├── hero.lua - 英雄/选英雄模块，包含点击/酒馆选择，repick/random功能等
    │   ├── is.lua - 判断模块 * 常用
    │   ├── item.lua - 物品模块，与属性系统无缝结合，合成/分拆等功能
    │   ├── itemPool.lua - 物品池
    │   ├── japi.lua - JAPI
    │   ├── leaderBoard.lua 排行榜模块，用于简易构建排行榜
    │   ├── lightning.lua - 闪电链
    │   ├── matcher.lua - 匹配器
    │   ├── monitor.lua - 监听器
    │   ├── multiBoard.lua - 多面板
    │   ├── player.lua - 玩家
    │   ├── quest.lua - 任务
    │   ├── rect.lua - 区域
    │   ├── shop.lua - 商店模块
    │   ├── sound.lua - 声音模块
    │   ├── textTag.lua - 漂浮字
    │   ├── texture.lua - 遮罩、贴图
    │   ├── time.lua - 时间/计时器 * 常用
    │   ├── unit.lua - 单位
    │   └── weather.lua - 天气
    ├── plugins（使用时需整段复制到触发内）
    │   ├── dzapi.v1.jass - 拓展dzapi(前期第1个版本)
    │   └── dzapi.v2.jass - 拓展dzapi(现任第2个版本)
    ├── require - F4触发器载入
    │   ├── data.lua - 需要在触发编辑器加载的文件，slk数据
    │   ├── helper.ljass - lua&vjass混合文件，slkHelper帮助物编构建
    │   ├── init.0.ljass - lua&vjass混合文件，用于初始化hslk哈希表
    │   ├── init.1.ljass - lua&vjass混合文件，用于hslk数据保存
    │   ├── math.lua - 拓展数学函数
    │   ├── require.ljass - 加载的入口文件
    │   └── table.lua - 拓展表相关函数
    └── resource - 资源数据(不需要在意的)
```

#### 开启DEBUG：
```
--在引用库之前，配置HLUA_DEBUG等于true
HLUA_DEBUG = true
require "h-lua"
...
```

#### 注意：
```
h-lua库开源，不定时更新，提供思路与帮助
h-lua库仅提供一些功能函数协助做图作者更加轻松制作地图
h-lua库不保证完全正确且无bug，如有需要，请自行修改源码进行游戏制作
```
