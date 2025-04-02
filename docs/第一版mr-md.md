# ⚡ ATP miner ⚡ Datapack

This datapack provides players with convenient chain-mining and tree-felling mechanics, featuring the core functions of most "vein mining" mods while offering additional expansion options and highly customizable configurations. Burn your ATP!

The datapack is highly compatible with vanilla gameplay and independent of world saves. Please search for installation tutorials yourself.  
After installation (no restart required), simply enter `/reload` in-game. If you hear a "ding" and see a datapack load notification, the installation was successful.

## 🔥 Unified Harvesting

When enabled, this feature allows mining or harvesting by groups (e.g., all connected ores). The same effect applies to logs, leaves, crops, corals, dyed blocks, sculk, prismarine, and 35 built-in vanilla block groups.  
For example, you can efficiently clear sculk shriekers, sculk sensors, and convert them into massive amounts of experience orbs.

![Unified Harvesting: Logs](https://cdn.modrinth.com/data/cached_images/c4ce112c772d55f63804798bac9335fe84b44d7a.gif "Unified Harvesting: Logs")

## 🔥 Smart Replanting

- Automatically replants saplings when chopping trees.
- Automatically replants seeds when harvesting crops.
- Tree replanting requires Unified Harvesting mode to be disabled. It supports thin trees and 2×2 giant trees but does not support mangroves or azalea trees.
- Crop replanting works with Unified Harvesting by detecting dropped seeds and planting them in tilled soil.  
Empower your tree farms and crop fields with automation!

![Unified Harvesting & Smart Replanting (Crops)](https://cdn.modrinth.com/data/cached_images/ae6fae8423f27c2f78f8210d941a2ab47c4ec946.gif "Unified Harvesting & Smart Replanting (Crops)")

## 🔥 Fast Leaf Decay

Prevents leaves from awkwardly floating mid-air. This only applies to leaves left behind by chained tree felling and does not interfere with other mechanics (e.g., TNT-based tree farms).  
(If leaves are not decaying, check if nearby logs are still supporting them. Once all connected logs are removed, all leaves in the area will decay.)

![Smart Replanting (Saplings) & Fast Leaf Decay](https://cdn.modrinth.com/data/cached_images/3747c64e9ad6a3361aa5a944b0b31626e09f1a72.gif "Smart Replanting (Saplings) & Fast Leaf Decay")

## 🔥 Area Farming

Turn your hoe into a super hoe!  
Supports tilling in an adjustable range from **1×1 to 9×9**. Players can modify the "width radius" to define the farmland size.  
- In "Flat Mode," an offhand water bucket will automatically hydrate the farmland center.
- Supports one-click area crop planting, which works best when combined with Smart Replanting.
- In Creative Mode, this feature does not consume resources or tool durability.

![Area Tilling & Planting](https://cdn.modrinth.com/data/cached_images/12c2f7b72ec06ee5a150e1615333c983b00b13a5.gif "Area Tilling & Planting")

## 🔥 Shape Mining

Mine in structured cubic shapes!  
Players can customize width, height, and depth to control the mined cube size. The maximum supported area is **9×9×9**, making it ideal for creating underground tunnels, caves, or excavation projects.

![Shape Mining: Width 2, Height 2, Depth 8](https://cdn.modrinth.com/data/cached_images/9c09a8bb935adcd1639ba78426132dce58e55823.gif "Shape Mining: Width 2, Height 2, Depth 8")

## 🔥 Auto Lighting

When enabled, torches will automatically be placed in dark areas or at night (if torches are available in the inventory or in Creative Mode).  
Useful for cave lighting, platform lighting, and hands-free visibility!

![Using Auto Lighting in a Mine](https://cdn.modrinth.com/data/cached_images/cda2f20242bc6eb9bb7808e7cab0f2aa8c8eb5e0.gif "Using Auto Lighting in a Mine")

# Usage Notes

1. This datapack includes **855 vanilla blocks and 35 block groups (as of 1.21.4)**, but players can manually add chain-minable blocks, add blocks to groups, or create new groups. The configuration file provides reference formats and examples.  
   A detailed `README.TXT` document is included with compatibility notes, FAQs, and troubleshooting information.

2. **All advanced features are disabled globally by default.**  
   - In multiplayer mode, server admins can enable features for players selectively using global settings commands.
   - Admins can also disable core functions.

3. Players can use `/trigger ATPminer` to open the customization menu. When set to "Custom Mode," players can individually enable or disable specific features.  
   - Players can choose whether **sneaking is required** to trigger chain mining.
   - Players can toggle **block count notifications** for each chain mining session.

4. **Blocks that do not require sneaking for chain mining:**  
   Ores, (stripped) logs, flowers, corals, fungi, crops, mature cocoa beans, cacti, sugarcane, bamboo, melons, and fully grown sweet berry bushes.

5. **Chain harvesting is compatible with item components and enchantments like Fortune, Unbreaking, and Silk Touch. When the tool's durability is low, chain harvesting will stop automatically.**

6. **Technical Details:**  
   - **Namespace:** `vmn`
   - **Command Storage:** `dp_vmn:1`
   - **Scoreboard Prefix:** `dp_vmn.`
   - **Entity Tag Prefix:** `dp_vmn_`
   - Uses **3 trigger scoreboard objectives**.

7. **Compatibility Notes:**  
   - **Not supported on some server software** (e.g., **Folia**).
   - **Incompatible with some plugins** (if they modify command syntax).
   - **Not compatible with land protection plugins**.
   - **The datapack files are in Simplified Chinese. If you use a different language, thanks for your understanding! An English version will be coming in future updates. 🙂**.

**English-Chinese Comparison (Translated by AI)**
![translation1](https://cdn.modrinth.com/data/cached_images/62c502cf22c0addc4635507aeb8566457c963114.png)
![translation2](https://cdn.modrinth.com/data/cached_images/da8093fd165248f7eb843c4bc46d9b6bd83a9145.png)
![translation3](https://cdn.modrinth.com/data/cached_images/07d0daf9df592b2a28f673c739989c80d7e6cc58.png)
⚡⚡⚡
