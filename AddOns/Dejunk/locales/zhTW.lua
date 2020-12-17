-- Dejunk: zhTW (Traditional Chinese) localization file.

local AddonName = ...
local L = _G.LibStub('AceLocale-3.0'):NewLocale(AddonName, 'zhTW')
if not L then return end

L["ADDED_ITEM_TO_LIST"] = "新增%s到%s。"
L["AUTO_OPEN_DESTROY_TOOLTIP"] = "發現可摧毀物品時，自動打開“摧毀”框架。"
L["AUTO_REPAIR_TEXT"] = "自動修理"
L["AUTO_REPAIR_TOOLTIP"] = "當開啟商店視窗介面時自動修理物品。"
L["AUTO_SELL_TEXT"] = "自動賣出"
L["AUTO_SELL_TOOLTIP"] = "當開啟商店視窗介面時自動賣出垃圾物品。"
L["BELOW_PRICE_TEXT"] = "低於價格"
L["BINDINGS_ADD_TO_LIST_TEXT"] = "新增到%s"
L["BINDINGS_REMOVE_FROM_LIST_TEXT"] = "從%s移除"
L["BY_CATEGORY_TEXT"] = "依據類別"
L["BY_QUALITY_TEXT"] = "依據品質"
L["BY_TYPE_TEXT"] = "依據類型"
L["CANNOT_DESTROY_WHILE_LISTS_UPDATING"] = "％s和％s正在更新時無法摧毀。"
L["CANNOT_DESTROY_WHILE_SELLING"] = "無法銷毀已出售的物品"
L["CANNOT_OPEN_ITEMS"] = "目前無法開啟物品。"
L["CANNOT_SELL_WHILE_DESTROYING"] = "無法出售已銷毀的物品"
L["CANNOT_SELL_WHILE_LISTS_UPDATING"] = " %s 與 %s 變更中無法進行出售"
L["CANNOT_SELL_WITHOUT_MERCHANT"] = "不能在無商店下售出。"
L["CHAT_ENABLE_TOOLTIP"] = "啟用聊天訊息。"
L["CHAT_FRAME_CHANGED_MESSAGE"] = "聊天訊息將出現在此框架中。"
L["CHAT_FRAME_TOOLTIP"] = "用於聊天訊息的框架。"
L["CHAT_REASON_TOOLTIP"] = "啟用指示商品為何出售或摧毀原因的訊息。|n|n僅在啟用％s時適用。"
L["CHAT_TEXT"] = "聊天視窗"
L["CHAT_VERBOSE_TOOLTIP"] = "啟用額外訊息在出售以及摧毀物品時。"
L["CLASS_TEXT"] = "職業"
L["CMD_HELP_DESTROY"] = "切換摧毀框架。"
L["CMD_HELP_OPEN"] = "開始開啟戰利品。"
L["CMD_HELP_SELL"] = "切換出售框架。"
L["CMD_HELP_TOGGLE"] = "切換選項框架。"
L["COMMANDS_TEXT"] = "指令"
L["COMMON_TEXT"] = "普通"
L["COPY_TEXT"] = "複製"
L["COULD_NOT_DESTROY_ITEM"] = "無法摧毀%s。"
L["COULD_NOT_SELL_ITEM"] = "無法賣出%s。"
L["DELETE_PROFILE_POPUP"] = "您確定要刪除設定檔 % 嗎？"
L["DELETE_TEXT"] = "刪除"
L["DESTROY_ALL_TOOLTIP"] = "摧毀所有此品質的物品。"
L["DESTROY_BELOW_PRICE_TOOLTIP"] = "只摧毀垃圾物品或是低於設置價格的垃圾物品。"
L["DESTROY_EXCESS_SOUL_SHARDS_SLIDER_LABEL"] = "靈魂碎片最大數量"
L["DESTROY_EXCESS_SOUL_SHARDS_TEXT"] = "過量的靈魂碎片"
L["DESTROY_EXCESS_SOUL_SHARDS_TOOLTIP"] = "自動丟棄超過設定量的靈魂碎片。|n|n僅適用於 |cFF8787ED術士|r."
L["DESTROY_EXCLUSIONS_HELP_TEXT"] = "此清單中的物品將永遠不會被摧毀。"
L["DESTROY_INCLUSIONS_HELP_TEXT"] = "此清單中的物品將永遠會被摧毀。"
L["DESTROY_NEXT_ITEM"] = "摧毀下個物品"
L["DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "已經收藏的寵物"
L["DESTROY_PETS_ALREADY_COLLECTED_TOOLTIP"] = "銷毀你最後一個已經收集的寵物。|n|n只適用於靈魂綁定的不能出售的寵物。"
L["DESTROY_TEXT"] = "摧毀"
L["DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "已經收藏的玩具"
L["DESTROY_TOYS_ALREADY_COLLECTED_TOOLTIP"] = "銷毀你已經收藏的玩具。|n|n只適用於靈魂綁定無法出售的玩具。"
L["DESTROYED_ITEM_VERBOSE"] = "摧毀：%s。"
L["DESTROYED_ITEMS_VERBOSE"] = "摧毀：%sx%s。"
L["DESTROYING_IN_PROGRESS"] = "摧毀已在處理中。"
L["DOES_NOT_APPLY_TO_QUALITY"] = "不適用於％s品質物品。"
L["ENABLE_TEXT"] = "啟用"
L["EPIC_TEXT"] = "史詩"
L["EXCLUSIONS_TEXT"] = "排除"
L["EXPORT_HELPER_TEXT"] = "當高亮時，使用<Ctrl+C>或<Cmd+C>來複製上面的匯出字串。"
L["EXPORT_PROFILE_TEXT"] = "匯出設定檔"
L["EXPORT_TEXT"] = "匯出"
L["FAILED_TO_PARSE_ITEM_ID"] = "物品ID %s 解析失敗，可能不存在。"
L["FRAME_TEXT"] = "框架"
L["GENERAL_TEXT"] = "一般"
L["GLOBAL_TEXT"] = "泛用"
L["IGNORE_BATTLEPETS_TEXT"] = "戰寵"
L["IGNORE_BATTLEPETS_TOOLTIP"] = "忽略戰鬥與召喚寵物。"
L["IGNORE_BOE_TEXT"] = "裝備後綁定"
L["IGNORE_BOE_TOOLTIP"] = "忽略裝備後綁定物品。|n|n不適用於粗糙品質的物品。"
L["IGNORE_CONSUMABLES_TEXT"] = "消耗品"
L["IGNORE_CONSUMABLES_TOOLTIP"] = "忽略消耗品例如食物、藥水以及神兵之力。"
L["IGNORE_COSMETIC_TEXT"] = "裝飾品"
L["IGNORE_COSMETIC_TOOLTIP"] = "忽略裝飾品以及通用裝甲像是外袍、襯衣以及握在副手的物品。"
L["IGNORE_EQUIPMENT_SETS_TEXT"] = "裝備套裝"
L["IGNORE_EQUIPMENT_SETS_TOOLTIP"] = "忽略屬於裝備套裝的物品。"
L["IGNORE_GEMS_TEXT"] = "珠寶"
L["IGNORE_GEMS_TOOLTIP"] = "忽略切割的珠寶以及神兵聖物。"
L["IGNORE_GLYPHS_TEXT"] = "銘文"
L["IGNORE_GLYPHS_TOOLTIP"] = "忽略銘文。"
L["IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "物品增強"
L["IGNORE_ITEM_ENHANCEMENTS_TOOLTIP"] = "忽略用於增強武器與裝甲的物品。"
L["IGNORE_MISCELLANEOUS_TEXT"] = "雜項"
L["IGNORE_MISCELLANEOUS_TOOLTIP"] = "忽略雜項物品。"
L["IGNORE_QUEST_ITEMS_TEXT"] = "任務物品"
L["IGNORE_QUEST_ITEMS_TOOLTIP"] = "忽略任務物品。"
L["IGNORE_READABLE_TEXT"] = "可閱讀的文件"
L["IGNORE_READABLE_TOOLTIP"] = "忽略可閱讀的文件"
L["IGNORE_REAGENTS_TEXT"] = "材料"
L["IGNORE_REAGENTS_TOOLTIP"] = "忽略材料物品。"
L["IGNORE_RECIPES_TEXT"] = "圖紙"
L["IGNORE_RECIPES_TOOLTIP"] = "忽略專業技能圖紙"
L["IGNORE_SOULBOUND_TEXT"] = "靈魂綁定"
L["IGNORE_SOULBOUND_TOOLTIP"] = "忽略靈魂綁定物品。|n|n不適用於粗糙品質的物品。"
L["IGNORE_TEXT"] = "忽略"
L["IGNORE_TRADE_GOODS_TEXT"] = "交易商品"
L["IGNORE_TRADE_GOODS_TOOLTIP"] = "忽略製造專業相關的物品。"
L["IGNORE_TRADEABLE_TEXT"] = "可交易"
L["IGNORE_TRADEABLE_TOOLTIP"] = "忽略可以與有拾取權玩家交易的物品。"
L["IGNORING_ITEM_LOCKED"] = "忽略: %s (%s)。"
L["IGNORING_ITEMS_INCOMPLETE_TOOLTIPS"] = "忽略工具提示不完整的物品。"
L["IMPORT_HELPER_TEXT"] = "輸入物品ID並以分號分隔（例如：4983;58907;67410）。"
L["IMPORT_PROFILE_HELPER_TEXT"] = "以<Ctrl+V>的方式將字串貼入上方框架"
L["IMPORT_PROFILE_TEXT"] = "匯入設定檔 "
L["IMPORT_TEXT"] = "匯入"
L["INCLUSIONS_TEXT"] = "出售"
L["ITEM_ALREADY_ON_LIST"] = "%s 已存在於 %s 中."
L["ITEM_CANNOT_BE_DESTROYED"] = "%s 無法被Dejunk摧毀。"
L["ITEM_CANNOT_BE_SOLD"] = "%s 無法被Dejunk出售。"
L["ITEM_LEVELS_TEXT"] = "物品等級"
L["ITEM_NOT_ON_LIST"] = "%s 不存在於 %s  中。"
L["ITEM_TOOLTIP_TEXT"] = "物品說明"
L["ITEM_TOOLTIP_TOOLTIP"] = "在物品提示中顯示Dejunk待出售或丟棄提示訊息。|n|n此提示僅對背包中物品有效."
L["ITEM_WILL_BE_DESTROYED"] = "此物品將會被摧毀。"
L["ITEM_WILL_BE_SOLD"] = "此物品將會被出售."
L["ITEM_WILL_NOT_BE_DESTROYED"] = "此物品將不會被摧毀。"
L["ITEM_WILL_NOT_BE_SOLD"] = "此物品將不會被出售."
L["ITEM_WINDOW_CURRENT_ITEMS"] = "當前物品"
L["ITEM_WINDOW_DRAG_DROP_TO_INCLUDE"] = "拖放一個物品以將其新增到 ％s。"
L["LEFT_CLICK"] = "左鍵點擊"
L["LIST_ADD_REMOVE_HELP_TEXT"] = "要新增物品，請將物品放在下面框架中。要移除物品，高亮此物品條目並右鍵點擊。"
L["LIST_TEXT"] = "列表"
L["MAY_NOT_HAVE_DESTROYED_ITEM"] = "無法摧毀 %s"
L["MAY_NOT_HAVE_SOLD_ITEM"] = "無法出售 %s."
L["MERCHANT_CHECKBUTTON_TEXT"] = "商店按鈕"
L["MERCHANT_CHECKBUTTON_TOOLTIP"] = "在商店視窗顯示Dejunk按鈕。"
L["MINIMAP_CHECKBUTTON_TEXT"] = "小地圖圖示 "
L["MINIMAP_CHECKBUTTON_TOOLTIP"] = "在小地圖上顯示Dejunk的圖示"
L["NAME_TEXT"] = "名字"
L["NO_CACHED_DESTROYABLE_ITEMS"] = "沒有需要摧毀的物品。請稍後再嘗試。"
L["NO_CACHED_JUNK_ITEMS"] = "沒有需要丟棄的垃圾，請稍後再嘗試。"
L["NO_DESTROYABLE_ITEMS"] = "沒有可摧毀的垃圾。"
L["NO_ITEMS_TEXT"] = "沒有物品."
L["NO_ITEMS_TO_OPEN"] = "沒有要開啟的物品。"
L["NO_JUNK_ITEMS"] = "沒有可出售的垃圾。"
L["ONLY_SELLING_CACHED"] = "某些物品無法直接出售，僅出售清單已指定的垃圾物品。"
L["OPEN_LOOTABLES"] = "開啟戰利品"
L["OPENING_ITEM"] = "開啟: %s。"
L["OPTION_GROUP_EXCLUSIONS"] = "%s 除外"
L["OPTION_GROUP_INCLUSIONS"] = "%s 包含"
L["POOR_TEXT"] = "粗糙"
L["PRICE_TEXT"] = "價格"
L["PROFILE_ACTIVATED_TEXT"] = "已啟用設定檔 %s "
L["PROFILE_COPIED_TEXT"] = "已複製設定檔 %s"
L["PROFILE_COPY_HELP_TEXT"] = "複製一個現存設定檔的設置到當前的設定檔，這會覆蓋所有當前設定檔的設置。"
L["PROFILE_CREATE_OR_SWITCH_HELP_TEXT"] = "透由在編輯框輸入名稱來建立新設定檔，或是使用下拉選單切換到現有的設定檔。"
L["PROFILE_CREATE_OR_SWITCH_TEXT"] = "建立或切換"
L["PROFILE_DELETE_HELP_TEXT"] = "刪除現存的設定檔，請小心！"
L["PROFILE_DELETED_TEXT"] = "已刪除設定檔 %s"
L["PROFILE_EXISTING_PROFILES_TEXT"] = "現存的設定檔"
L["PROFILE_EXISTS_TEXT"] = "設定檔 %s 已存在"
L["PROFILE_INVALID_IMPORT_TEXT"] = "匯入字串為無效字串"
L["PROFILE_NAME_TEXT"] = "設定檔名稱"
L["PROFILE_NEW_TEXT"] = "新設定檔"
L["PROFILES_TEXT"] = "設定檔"
L["QUALITY_TEXT"] = "品質"
L["RARE_TEXT"] = "精良"
L["REASON_ITEM_IS_LOCKED_TEXT"] = "物品已鎖定"
L["REASON_ITEM_NOT_FILTERED_TEXT"] = "無相關處理設定"
L["REASON_SELL_ITEM_TO_BE_DESTROYED"] = "除此以外要被摧毀的物品。"
L["REASON_TEXT"] = "原因"
L["REMOVE_ALL_POPUP"] = "您確定要從 %s 移除所有物品嗎？"
L["REMOVE_ALL_TEXT"] = "全部移除"
L["REMOVED_ALL_FROM_LIST"] = "將 %s清空"
L["REMOVED_ITEM_FROM_LIST"] = "已將%s從%s中移除"
L["REPAIRED_ALL_ITEMS"] = "花費 %s 修復所有裝備"
L["REPAIRED_ALL_ITEMS_GUILD"] = "花費公會 %s 修復所有裝備"
L["REPAIRED_NO_ITEMS"] = "無足夠金幣修理裝備 "
L["REPAIRING_TEXT"] = "修理裝備 "
L["RIGHT_CLICK"] = "右鍵點擊"
L["SAFE_MODE_MESSAGE"] = "安全模式啟用:僅出售 %s 件物品"
L["SAFE_MODE_TEXT"] = "安全模式 "
L["SAFE_MODE_TOOLTIP"] = "限制每次出售物品為 %s 件"
L["SELL_ALL_TOOLTIP"] = "賣出所有此品質的物品。"
L["SELL_BELOW_AVERAGE_ILVL_TEXT"] = "低於平均裝備等級 "
L["SELL_BELOW_AVERAGE_ILVL_TOOLTIP"] = "賣出低於平均裝等的裝備 |n|n不會套用於變身物品與釣魚用品。"
L["SELL_BELOW_PRICE_TOOLTIP"] = "僅會出售低於設定價格的單一或整疊的廢棄物"
L["SELL_EXCLUSIONS_HELP_TEXT"] = "此清單上的物品將永遠不會被出售。"
L["SELL_INCLUSIONS_HELP_TEXT"] = "此清單上的物品將永遠被出售。"
L["SELL_NEXT_ITEM"] = "出售下個物品"
L["SELL_TEXT"] = "出售"
L["SELL_UNSUITABLE_TEXT"] = "不適當裝備"
L["SELL_UNSUITABLE_TOOLTIP"] = "賣出無法裝備的武器與不符合的護甲種類"
L["SELL_UNSUITABLE_TOOLTIP_CLASSIC"] = "將職業不能使用的武器或護甲自動賣出"
L["SELLING_IN_PROGRESS"] = "自動出售進行中"
L["SHIFT_LEFT_CLICK"] = "Shift-左鍵點擊"
L["SHIFT_RIGHT_CLICK"] = "Shift-右鍵點擊"
L["SOLD_ITEM_VERBOSE"] = "賣出：%s。"
L["SOLD_ITEMS_VERBOSE"] = "賣出：%sx%s。"
L["SOLD_YOUR_JUNK"] = "賣出雜物後獲得%s。"
L["SORT_BY_TEXT"] = "排序根據"
L["START_SELLING_BUTTON_TEXT"] = "開始售出"
L["STATUS_CONFIRMING_ITEMS_TEXT"] = "確認物品..."
L["STATUS_SELLING_ITEMS_TEXT"] = "出售物品..."
L["STATUS_UPDATING_LISTS_TEXT"] = "更新列表..."
L["TOGGLE_DESTROY_FRAME"] = "切換摧毀框架"
L["TOGGLE_OPTIONS_FRAME"] = "切換選項框架"
L["TOGGLE_SELL_FRAME"] = "切換出售框架"
L["TRANSITIONED_DATABASE_MESSAGE"] = "轉換到新數據庫。現有設置已重設，清單除外。"
L["UNCOMMON_TEXT"] = "優秀"
L["USAGE_TEXT"] = "用法"
L["USE_GUILD_REPAIR_TEXT"] = "如果可用優先使用公會修理。"
L["USE_GUILD_REPAIR_TOOLTIP"] = "優先使用公會修理如果可用的話。"
L["VERBOSE_TEXT"] = "詳細"
L["VERSION_TEXT"] = "版本"

