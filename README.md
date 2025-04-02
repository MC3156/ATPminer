# ATPminer

**ATP高能连锁** 数据包
*(Languages adjustable: **Chinese** or **English**)*

链接：[Github](https://github.com/MC3156 "访问Github") [MCMOD](https://www.mcmod.cn/author/31605.html "访问mcmod百科") [Modrinth](https://modrinth.com/user/Dreamy_Blaze "Modrinth")

> 本数据包主要提供便捷的连锁挖掘与砍伐功能，具有“连锁采集”类模组的基本功能，除此之外还有拓展功能以及高度个性化的配置；游戏内玩家可以使用 **/trigger ATPminer** 调整个人设置，燃烧你的 ATP！
> *This datapack provides players with convenient chain-mining and tree-felling mechanics, featuring the core functions of most "vein mining" mods while offering additional expansion options and highly customizable configurations. Burn your ATP!*

## 使用说明(Usage)

<details>
  <summary><b>点击展开教程：如何安装数据包？</b></summary>

**单人存档 >>** 打开游戏文件夹，找到游戏存档文件夹 **saves**，其中找到你的存档名字对应的文件夹，进去后将数据包**zip**(或者解压成文件夹，只要保证第一层路径内要有 **data** 文件夹和 **pack.mcmeta**)放到里面的 **datapacks** 文件夹内即可；

**服务器 >>** 进入服务器文件管理，找到 **world** 文件夹(服务器存档的默认名字)，将数据包**zip**(或解压)放到里面的 **datapacks** 文件夹内即可。

- 数据包只需要服务端安装即可，如果是单人模式，那么存档本身就是“服务端”；
- 注意，数据包不是**资源包**(Resourcepack)，数据包修改玩法，资源包修改渲染，两者的安装都比较容易但并不相同；
- 本数据包无附属资源包，不需要装载到**resourcepacks**内；
- 本数据包无生成相关修改或实验性设置，可以直接加入现有的存档内启用(不需重启游戏)。

上述教程若无效，这里有Minecraft Wiki官方的参考教程：[MinecraftWiki](https://minecraft.wiki/w/Tutorial:Installing_a_data_pack "Tutorial:Installing a data pack")或[MC中文wiki](https://zh.minecraft.wiki/w/Tutorial:%E5%AE%89%E8%A3%85%E6%95%B0%E6%8D%AE%E5%8C%85 "教程：安装数据包")
安装成功后，使用命令`/reload`重载。
  
</details>

---

⚡使用下面的命令打开个人设置：
(个人设置右侧可以配置全局设置，前提是有命令权限)
*Use the following command to open personal settings*
*(Global settings can be configured on the right side of personal settings, provided you have command permissions)*

```mcfunction
/trigger ATPminer
```

⚡使用下面的命令打开参数设置：
*Use the following command to open parameter settings*

```mcfunction
/trigger ATPminer_config
```

若要修改补充配置文件(添加方块、联合组、工具、作物等等)，请转到**配置说明.txt**
*To modify supplementary configuration files (such as adding blocks, joint groups, tools, crops, etc.), please go to **file_description.txt***

## 功能简介(Function)

1.连锁采集兼容**物品堆叠组件**和**时运**、**耐久**、**精准采集**等魔咒，工具耐久度较低时会停止连锁，会处理玩家饱食度；
2.多数方块需要热键才可以触发连锁(避免过度破坏)，未启用强制“热键连锁”时，这些方块默认自动连锁：**矿石、（去皮）原木、花草、珊瑚、真菌、农作物、成熟的可可豆、仙人掌、甘蔗、竹子、生瓜、成熟甜浆果丛**，在**1.21.2**以后可以使用**左Ctrl**或**左Shift**热键(未开启“热键连锁”时，遵循Shift，**需要防误触请开启Ctrl！**)
3.检测到方块数量较大时，会启用异步连锁(每游戏刻处理固定数量的方块，扩散过程可视化)避免卡顿，更换手持物品、传送、退出游戏等等都会停止异步连锁；
4.安装数据包后，所有功能默认“自选”，即不同玩家可以自己选择是否开启各项拓展功能，在**全局设置**中可以修改；
5.数据包不支持少数服务端（例如 Folia），不兼容部分插件（若插件改写了命令语法），不兼容领地保护，兼容多数生电辅助模组；
6.本数据包使用命名空间 `vmn`，命令存储 `dp_vmn:1`，计分板前缀为 `dp_vmn.`，实体标签前缀为 `dp_vmn_`，使用了 2 个玩家可用的 `trigger` 触发器。
下面是各种拓展功能的介绍。

*1. Chain harvesting is compatible with item components and enchantments like **Fortune**, **Unbreaking**, and **Silk Touch**. When the tool's durability is low, chain harvesting will stop automatically.*
*2. Most blocks require a hotkey to trigger chain reactions (to prevent excessive destruction). When the "Hotkey Chain" enforcement is not enabled, the following blocks automatically chain by default: **Ores, (stripped) logs, flowers/plants, corals, fungi, crops, mature cocoa pods, cacti, sugar cane, bamboo, melon stems, mature sweet berry bushes**. After **1.21.2**, you can use **Left Ctrl** or **Left Shift** as hotkeys  (When "Hotkey Chaining" is disabled, Shift takes priority. **Enable Ctrl for anti-ghost-touch!**)*
*3. When a large number of blocks are detected, asynchronous chaining will be enabled (processing a fixed number of blocks per game tick with visible diffusion effects) to prevent lag. The asynchronous chaining will automatically stop if the player: Switches tools, Teleports, or Exits the game.*
*4. After installing the datapack, all features are optional by default—meaning each player can individually choose whether to enable specific expanded functionalities. This behavior can be modified in **Global Settings**.*
*5. Compatibility Notes: Not supported on some server software (e.g., **Folia**); Incompatible with some plugins (if they modify command syntax); Not compatible with land protection plugins.*
*6. Technical Details: Namespace: `vmn`; Command Storage: `dp_vmn:1`; Scoreboard Prefix: `dp_vmn.`; Entity Tag Prefix: `dp_vmn_`; Uses 2 `trigger` scoreboard objectives.*

### 🔥 联合采集-Unified Harvesting

启用时可以以组为单位搜索采集（例如所有相连的各种矿石），同样效果可运用于原木、树叶、农作物、珊瑚、染色建材、幽匿、海晶石等 35 个内置的原版组（可以更快的清理幽匿尖啸体、幽匿感测体等等，并大量转化成经验）。

*When enabled, this feature allows mining or harvesting by groups (e.g., all connected ores). The same effect applies to logs, leaves, crops, corals, dyed blocks, sculk, prismarine, and 35 built-in vanilla block groups.*
*For example, you can efficiently clear sculk shriekers, sculk sensors, and convert them into massive amounts of experience orbs.*

![Unified Harvesting: Logs](https://cdn.modrinth.com/data/cached_images/c4ce112c772d55f63804798bac9335fe84b44d7a.gif "Unified Harvesting: Logs")

### 🔥 智能补种-Smart Replanting

启用后，伐木时自动补种树苗，收集农作物时自动在耕地上补种。**自动种树需要关闭联合采集模式生效**，支持纤细树木和 2×2 的粗壮树木，暂不支持红树和杜鹃树；自动种植农作物可兼容联合采集，原理是检测掉落物中的种子并种植在下方耕地。为你的人工树场和农场赋能！

- *Automatically replants saplings when chopping trees.*
- *Automatically replants seeds when harvesting crops.*
- *Tree replanting **requires Unified Harvesting mode to be disabled**. It supports thin trees and 2×2 giant trees but does not support mangroves or azalea trees.*
- *Crop replanting works with Unified Harvesting by detecting dropped seeds and planting them in tilled soil.*

*Empower your tree farms and crop fields with automation!*

![Unified Harvesting & Smart Replanting (Crops)](https://cdn.modrinth.com/data/cached_images/ae6fae8423f27c2f78f8210d941a2ab47c4ec946.gif "Unified Harvesting & Smart Replanting (Crops)")

### 🔥 快速落叶-Fast Leaf Decay

让那些即将枯萎的树叶早早地结束悬空的尴尬，该功能只会对玩家通过连锁砍伐留下的树叶有效，不影响其他机制（如生电树场机器）。
如果树叶没有枯萎，检查附近是否还有可以支持树叶存在的原木，不过，一片区域的原木全部采集后所有相连的树叶都会枯萎。

*Prevents leaves from awkwardly floating mid-air. This only applies to leaves left behind by chained tree felling and does not interfere with other mechanics (e.g., TNT-based tree farms).*  
*(If leaves are not decaying, check if nearby logs are still supporting them. Once all connected logs are removed, all leaves in the area will decay.)*

![Smart Replanting (Saplings) & Fast Leaf Decay](https://cdn.modrinth.com/data/cached_images/3747c64e9ad6a3361aa5a944b0b31626e09f1a72.gif "Smart Replanting (Saplings) & Fast Leaf Decay")

### 🔥 范围耕种-Area Farming

小锄头变耕地机！
在同一平面支持 1×1 ~ 9×9 的范围耕作，玩家可修改“宽半径”，配置耕地的范围，也支持直线耕作；在“平面模式”下，副手的水桶会自动将水灌溉在耕地中心；还支持一键范围种植农作物，配合智能补种体验更佳，快速搭建农场！在创造模式下，不消耗上述任何资源和工具耐久。

*Turn your hoe into a super hoe!*
*Supports tilling in an adjustable range from **1×1 to 9×9**. Players can modify the "width radius" to define the farmland size.*

- In "Flat Mode," an offhand water bucket will automatically hydrate the farmland center.
- Supports one-click area crop planting, which works best when combined with Smart Replanting.
- In Creative Mode, this feature does not consume resources or tool durability.

![Area Tilling & Planting](https://cdn.modrinth.com/data/cached_images/12c2f7b72ec06ee5a150e1615333c983b00b13a5.gif "Area Tilling & Planting")

### 🔥 矩形挖掘-Shape Mining

启用后，可以挖掘出规则的立方体；玩家可以自己修改宽度、高度、深度，决定挖掘的立方体大小，最大支持一次性开采 9×9×9 的范围，非常适合开辟地下通道或洞穴等等。

*Mine in structured cubic shapes!*  
*Players can customize width, height, and depth to control the mined cube size. The maximum supported area is **9×9×9**, making it ideal for creating underground tunnels, caves, or excavation projects.*

![Shape Mining: Width 2, Height 2, Depth 8](https://cdn.modrinth.com/data/cached_images/9c09a8bb935adcd1639ba78426132dce58e55823.gif "Shape Mining: Width 2, Height 2, Depth 8")

### 🔥 自动照明-Auto Lighting

在需要明亮视野或需要防刷怪的区域，开启自动照明可以自动在附近暗处或黑夜安放火把（在背包有足够火把的情况下或者是创造模式有 1 根火把），常用于洞穴照明或平台照明，解放双手！

*When enabled, torches will automatically be placed in dark areas or at night (if torches are available in the inventory or in Creative Mode).*  
*Useful for cave lighting, platform lighting, and hands-free visibility!*

![Using Auto Lighting in a Mine](https://cdn.modrinth.com/data/cached_images/cda2f20242bc6eb9bb7808e7cab0f2aa8c8eb5e0.gif "Using Auto Lighting in a Mine")
