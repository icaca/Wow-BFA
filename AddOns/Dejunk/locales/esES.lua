-- Dejunk: esES (Spanish) localization file.

local AddonName = ...
local L = _G.LibStub('AceLocale-3.0'):NewLocale(AddonName, 'esES')
if not L then return end

L["ADDED_ITEM_TO_LIST"] = "Añadido %s a %s."
L["AUTO_OPEN_DESTROY_TOOLTIP"] = "Abre automáticamente el cuadro Destruir cuando se encuentran elementos destruibles."
L["AUTO_REPAIR_TEXT"] = "Auto reparar"
L["AUTO_REPAIR_TOOLTIP"] = "Reparar automáticamente los artículos al abrir una ventana de comerciante."
L["AUTO_SELL_TEXT"] = "Auto vender"
L["AUTO_SELL_TOOLTIP"] = "Automáticamente vender artículos basura al abrir una ventana de comerciante."
L["BELOW_PRICE_TEXT"] = "Bajo el precio"
L["BINDINGS_ADD_TO_LIST_TEXT"] = "Añadir a %s"
L["BINDINGS_REMOVE_FROM_LIST_TEXT"] = "Eliminar de %s"
L["BY_CATEGORY_TEXT"] = "Por categoria"
L["BY_QUALITY_TEXT"] = "Por calidad"
L["BY_TYPE_TEXT"] = "Por tipo"
L["CANNOT_DESTROY_WHILE_LISTS_UPDATING"] = "No se puede destruir mientras se actualizan %s y %s ."
L["CANNOT_DESTROY_WHILE_SELLING"] = "No se puede destruir mientras se venden artículos."
L["CANNOT_OPEN_ITEMS"] = "No se pueden abrir elementos en este momento."
L["CANNOT_SELL_WHILE_DESTROYING"] = "No se puede vender mientras se destruyen los artículos."
L["CANNOT_SELL_WHILE_LISTS_UPDATING"] = "No se puede vender mientras se actualizan %s y %s ."
L["CANNOT_SELL_WITHOUT_MERCHANT"] = "No se puede vender sin un comerciante."
L["CHAT_ENABLE_TOOLTIP"] = "Habilita los mensajes de chat."
L["CHAT_FRAME_CHANGED_MESSAGE"] = "Los mensajes de chat ahora aparecerán en este marco."
L["CHAT_FRAME_TOOLTIP"] = "Marco que se utilizará para los mensajes de chat."
L["CHAT_REASON_TOOLTIP"] = "Habilita mensajes que indiquen el motivo por el que se vendió o destruyó un artículo. |n|n Solo se aplica cuando %s está habilitado."
L["CHAT_TEXT"] = "Chat"
L["CHAT_VERBOSE_TOOLTIP"] = "Habilite mensajes adicionales al vender y destruir artículos."
L["CLASS_TEXT"] = "Clase"
L["CMD_HELP_DESTROY"] = "Alterna el marco de destrucción."
L["CMD_HELP_OPEN"] = "Empieza a abrir objetos que se pueden saquear."
L["CMD_HELP_SELL"] = "Alterna el marco de venta."
L["CMD_HELP_TOGGLE"] = "Alterna el marco de opciones."
L["COMMANDS_TEXT"] = "Comandos"
L["COMMON_TEXT"] = "Común"
L["COPY_TEXT"] = "Copiar"
L["COULD_NOT_DESTROY_ITEM"] = "No se pudo destruir %s."
L["COULD_NOT_SELL_ITEM"] = "No se pudo vender %s."
L["DELETE_PROFILE_POPUP"] = "¿Seguro de que deseas eliminar el perfil %s?"
L["DELETE_TEXT"] = "Borrar"
L["DESTROY_ALL_TOOLTIP"] = "Destruye todos los objetos de esta calidad."
L["DESTROY_BELOW_PRICE_TOOLTIP"] = "Destruir artículos chatarra o pilas de artículos chatarra que valgan menos de un precio establecido."
L["DESTROY_EXCESS_SOUL_SHARDS_SLIDER_LABEL"] = "Fragmentos máximos"
L["DESTROY_EXCESS_SOUL_SHARDS_TEXT"] = "Exceso de fragmentos de alma"
L["DESTROY_EXCESS_SOUL_SHARDS_TOOLTIP"] = "Destruye los fragmentos de alma que superen un máximo establecido. |n|n Solo se aplica a |cFF8787EDWarlocks|r."
L["DESTROY_EXCLUSIONS_HELP_TEXT"] = "Los elementos de esta lista nunca serán destruidos."
L["DESTROY_INCLUSIONS_HELP_TEXT"] = "Los elementos de esta lista siempre se destruirán."
L["DESTROY_NEXT_ITEM"] = "Destruir el siguiente elemento"
L["DESTROY_PETS_ALREADY_COLLECTED_TEXT"] = "Mascotas ya conocidas"
L["DESTROY_PETS_ALREADY_COLLECTED_TOOLTIP"] = "Destruye las mascotas de las que ya has capturado al menos una.|n|nSolo se aplica a las mascotas que no pueden ser vendidas."
L["DESTROY_TEXT"] = "Destruir"
L["DESTROY_TOYS_ALREADY_COLLECTED_TEXT"] = "Juguetes ya conocidos"
L["DESTROY_TOYS_ALREADY_COLLECTED_TOOLTIP"] = "Destruye los juguetes ya conocidos. |n|nSólo se aplica a juguetes que no pueden ser vendidos."
L["DESTROYED_ITEM_VERBOSE"] = "Destruido: %s."
L["DESTROYED_ITEMS_VERBOSE"] = "Destruidos: %sx%s."
L["DESTROYING_IN_PROGRESS"] = "Destruyendo ya está en progreso."
L["DOES_NOT_APPLY_TO_QUALITY"] = "No se aplica a los artículos de calidad %s."
L["ENABLE_TEXT"] = "Habilitar"
L["EPIC_TEXT"] = "Épico"
L["EXCLUSIONS_TEXT"] = "Exclusiones"
L["EXPORT_HELPER_TEXT"] = "Cuando esté resaltado, use <Ctrl+C> para copiar la cadena de exportación."
L["EXPORT_PROFILE_TEXT"] = "Exportar perfil"
L["EXPORT_TEXT"] = "Exportar"
L["FAILED_TO_PARSE_ITEM_ID"] = "El ID del objeto %s no se pudo analizar y es posible que no exista."
L["FRAME_TEXT"] = "Marco"
L["GENERAL_TEXT"] = "General"
L["GLOBAL_TEXT"] = "Global"
L["IGNORE_BATTLEPETS_TEXT"] = "Mascotas de duelo"
L["IGNORE_BATTLEPETS_TOOLTIP"] = "Ignorar mascotas de duelo y compañia."
L["IGNORE_BOE_TEXT"] = "Se liga al equipar"
L["IGNORE_BOE_TOOLTIP"] = "Ignorar objetos ligados al equipar. |n|n No se aplica a objetos de mala calidad."
L["IGNORE_CONSUMABLES_TEXT"] = "Consumibles"
L["IGNORE_CONSUMABLES_TOOLTIP"] = "Ignora los consumibles, como alimentos y pociones."
L["IGNORE_COSMETIC_TEXT"] = "Cosmetico"
L["IGNORE_COSMETIC_TOOLTIP"] = "Ignora las armaduras cosméticas y genéricas, como tabardos, camisas y objetos de mano izquierda."
L["IGNORE_EQUIPMENT_SETS_TEXT"] = "Conjuntos"
L["IGNORE_EQUIPMENT_SETS_TOOLTIP"] = "Ignora objetos pertenecientes a conjuntos de equipos."
L["IGNORE_GEMS_TEXT"] = "Gemas"
L["IGNORE_GLYPHS_TEXT"] = "Glifos"
L["IGNORE_GLYPHS_TOOLTIP"] = "Ignora glifos"
L["IGNORE_ITEM_ENHANCEMENTS_TEXT"] = "Mejoras de objeto"
L["IGNORE_ITEM_ENHANCEMENTS_TOOLTIP"] = "Ignora artículos usados para mejorar armas y armaduras."
L["IGNORE_MISCELLANEOUS_TEXT"] = "Miscelanea"
L["IGNORE_MISCELLANEOUS_TOOLTIP"] = "Ignora los artículos miscelanea."
L["IGNORE_QUEST_ITEMS_TEXT"] = "Artículos de misión"
L["IGNORE_QUEST_ITEMS_TOOLTIP"] = "Ignora artículos de misión."
L["IGNORE_READABLE_TEXT"] = "Legible"
L["IGNORE_READABLE_TOOLTIP"] = "Ignora objetos que se pueden leer, como cartas y libros."
L["IGNORE_REAGENTS_TEXT"] = "Reactivos"
L["IGNORE_REAGENTS_TOOLTIP"] = "Ignora los reactivos."
L["IGNORE_RECIPES_TEXT"] = "Recetas"
L["IGNORE_RECIPES_TOOLTIP"] = "Ignora las recetas de profesión."
L["IGNORE_SOULBOUND_TEXT"] = "Ligado"
L["IGNORE_SOULBOUND_TOOLTIP"] = "Ignore los objetos ligados. |n|nNo se aplica a los elementos de mala calidad."
L["IGNORE_TEXT"] = "Ignorar"
L["IGNORE_TRADE_GOODS_TEXT"] = "Bienes comerciales"
L["IGNORE_TRADE_GOODS_TOOLTIP"] = "Ignora los elementos creados de profesiones."
L["IGNORE_TRADEABLE_TEXT"] = "Comercializable"
L["IGNORE_TRADEABLE_TOOLTIP"] = "Ignora los objetos que se pueden intercambiar con jugadores que también fueron elegibles para saquearlos."
L["IGNORING_ITEM_LOCKED"] = "Ignorando: %s (%s)."
L["IGNORING_ITEMS_INCOMPLETE_TOOLTIPS"] = "Ignora objetos con información incompleta."
L["IMPORT_HELPER_TEXT"] = "Introduzca los ID de objeto separados por un punto y coma (por ejemplo, 4983;58907;67410)."
L["IMPORT_PROFILE_HELPER_TEXT"] = "Use <Ctrl+V> para pegar una cadena de importación en el cuadro de arriba."
L["IMPORT_PROFILE_TEXT"] = "Importar perfil"
L["IMPORT_TEXT"] = "Importar"
L["INCLUSIONS_TEXT"] = "Inclusiones"
L["ITEM_ALREADY_ON_LIST"] = "%s ya está en %s."
L["ITEM_CANNOT_BE_DESTROYED"] = "%s no puede ser destruido por Dejunk."
L["ITEM_CANNOT_BE_SOLD"] = "%s no puede ser vendido por Dejunk."
L["ITEM_NOT_ON_LIST"] = "%s no esta en %s."
L["ITEM_TOOLTIP_TEXT"] = "Información"
L["ITEM_TOOLTIP_TOOLTIP"] = "Dejunk muestra un mensaje en la información sobre herramientas de un objeto que indica si se venderá. Mantenga presionada la tecla <Mayús> para indicar si se destruirá. |n|nMantenga presionada <Alt> o <Mayús+Alt> para mostrar el motivo. |n|nEsta información sobre herramientas solo se aplica al pasar el ratón sobre los objetos en sus bolsas."
L["ITEM_WILL_BE_DESTROYED"] = "Este objeto será destruido."
L["ITEM_WILL_BE_SOLD"] = "Este objeto sera vendido."
L["ITEM_WILL_NOT_BE_DESTROYED"] = "Este objeto no será destruido."
L["ITEM_WILL_NOT_BE_SOLD"] = "Este objeto no será vendido."
L["ITEM_WINDOW_CURRENT_ITEMS"] = "Objetos actuales"
L["ITEM_WINDOW_DRAG_DROP_TO_INCLUDE"] = "Arrastre y suelte un elemento para agregarlo a %s."
L["LEFT_CLICK"] = "Clic Izquierdo"
L["LIST_ADD_REMOVE_HELP_TEXT"] = "Para agregar un elemento, suéltelo en el marco de abajo. Para eliminar un elemento, resalte una entrada y haga clic con el botón derecho."
L["LIST_TEXT"] = "Lista"
L["MAY_NOT_HAVE_DESTROYED_ITEM"] = "No puede haber destruido %s."
L["MAY_NOT_HAVE_SOLD_ITEM"] = "Puede no haber vendido %s."
L["MERCHANT_CHECKBUTTON_TEXT"] = "Comerciante"
L["MERCHANT_CHECKBUTTON_TOOLTIP"] = "Muestra un botón Dejunk en el marco del comerciante."
L["MINIMAP_CHECKBUTTON_TEXT"] = "Icono minimapa"
L["MINIMAP_CHECKBUTTON_TOOLTIP"] = "Muestra un icono de Dejunk en el minimapa."
L["NAME_TEXT"] = "Nombre"
L["NO_CACHED_DESTROYABLE_ITEMS"] = "No se pudo recuperar ningún objeto basura destruible. Inténtalo de nuevo más tarde."
L["NO_CACHED_JUNK_ITEMS"] = "No se pudieron recuperar objetos chatarra. Inténtalo de nuevo más tarde."
L["NO_DESTROYABLE_ITEMS"] = "No hay objetos basura para destruir."
L["NO_ITEMS_TEXT"] = "No hay objetos."
L["NO_ITEMS_TO_OPEN"] = "No hay elementos para abrir."
L["NO_JUNK_ITEMS"] = "No hay objetos chatarra para vender."
L["ONLY_SELLING_CACHED"] = "Algunos objetoss no pudieron ser recuperados. Vendiendo objetos basura en caché."
L["OPEN_LOOTABLES"] = "Abrir botín"
L["OPENING_ITEM"] = "Abriendo %s."
L["OPTION_GROUP_EXCLUSIONS"] = "%s Exclusiones"
L["OPTION_GROUP_INCLUSIONS"] = "%s Inclusiones"
L["POOR_TEXT"] = "Pobre"
L["PRICE_TEXT"] = "Precio"
L["PROFILE_ACTIVATED_TEXT"] = "Perfil activado %s."
L["PROFILE_COPIED_TEXT"] = "Perfil copiado %s."
L["PROFILE_COPY_HELP_TEXT"] = "Copia la configuración de un perfil existente en el perfil actual. Esto sobrescribirá todas las configuraciones del perfil actual."
L["PROFILE_CREATE_OR_SWITCH_HELP_TEXT"] = "Cree un nuevo perfil ingresando un nombre en el cuadro de edición, o cambie a un perfil existente usando el menú desplegable."
L["PROFILE_CREATE_OR_SWITCH_TEXT"] = "Crear o cambiar"
L["PROFILE_DELETE_HELP_TEXT"] = "Elimina un perfil existente. ¡Ten cuidado!"
L["PROFILE_DELETED_TEXT"] = "Perfil eliminado %s."
L["PROFILE_EXISTING_PROFILES_TEXT"] = "Perfiles existentes"
L["PROFILE_EXISTS_TEXT"] = "El perfil %s ya existe."
L["PROFILE_INVALID_IMPORT_TEXT"] = "Cadena de importación inválida"
L["PROFILE_NAME_TEXT"] = "Nombre de perfil"
L["PROFILE_NEW_TEXT"] = "Nuevo perfil"
L["PROFILES_TEXT"] = "Perfiles"
L["QUALITY_TEXT"] = "Calidad"
L["RARE_TEXT"] = "Raro"
L["REASON_ITEM_IS_LOCKED_TEXT"] = "El objeto esta bloqueado"
L["REASON_ITEM_NOT_FILTERED_TEXT"] = "Este objeto no está siendo filtrado."
L["REASON_SELL_ITEM_TO_BE_DESTROYED"] = "De lo contrario, el artículo se destruirá."
L["REASON_TEXT"] = "Razón"
L["REMOVE_ALL_POPUP"] = "¿Seguro que desea eliminar todos los elementos de %s?"
L["REMOVE_ALL_TEXT"] = "Borrar todo"
L["REMOVED_ALL_FROM_LIST"] = "Se eliminaron todos los objetos de %s."
L["REMOVED_ITEM_FROM_LIST"] = "Se eliminó %s de %s."
L["REPAIRED_ALL_ITEMS"] = "Reparados todos los objetos por %s."
L["REPAIRED_ALL_ITEMS_GUILD"] = "Reparados todos los objetos por %s (Hermandad)."
L["REPAIRED_NO_ITEMS"] = "No hay suficiente dinero para reparar."
L["REPAIRING_TEXT"] = "Reparando"
L["RIGHT_CLICK"] = "Clic derecho"
L["SAFE_MODE_MESSAGE"] = "El modo seguro está habilitado: solo se venden %s objetos."
L["SAFE_MODE_TEXT"] = "Modo seguro"
L["SAFE_MODE_TOOLTIP"] = "Solo vende hasta %s artículos a la vez."
L["SELL_ALL_TOOLTIP"] = "Vende todos los objetos de esta calidad."
L["SELL_BELOW_PRICE_TOOLTIP"] = "Vende artículos chatarra o pilas de artículos chatarra que valgan menos de un precio establecido."
L["SELL_EXCLUSIONS_HELP_TEXT"] = "Los artículos de esta lista nunca se venderán."
L["SELL_INCLUSIONS_HELP_TEXT"] = "Los artículos de esta lista siempre se venderán."
L["SELL_NEXT_ITEM"] = "Vende el siguiente artículo"
L["SELL_TEXT"] = "Vender"
L["SELL_UNSUITABLE_TEXT"] = "Equipo no usable"
L["SELL_UNSUITABLE_TOOLTIP"] = "Vende todas las armas que no sean adecuadas para tu clase y vende todas las armaduras que no coincidan con el tipo de armadura principal de tu clase."
L["SELL_UNSUITABLE_TOOLTIP_CLASSIC"] = "Vende todas las armas y armaduras que tu clase no pueda usar o aprender."
L["SELLING_IN_PROGRESS"] = "La venta ya está en curso."
L["SHIFT_LEFT_CLICK"] = "Mayús, clic izquierdo"
L["SHIFT_RIGHT_CLICK"] = "Mayús, clic derecho"
L["SOLD_ITEM_VERBOSE"] = "Vendido: %s."
L["SOLD_ITEMS_VERBOSE"] = "Vendido: %sx%s."
L["SOLD_YOUR_JUNK"] = "Vendida tu chatarra por %s."
L["SORT_BY_TEXT"] = "Ordenar por"
L["START_SELLING_BUTTON_TEXT"] = "Empezar a vender"
L["STATUS_CONFIRMING_ITEMS_TEXT"] = "Confirmando elementos ..."
L["STATUS_SELLING_ITEMS_TEXT"] = "Vendiendo artículos ..."
L["STATUS_UPDATING_LISTS_TEXT"] = "Actualizando listas ..."
L["TOGGLE_DESTROY_FRAME"] = "Alternar marco Destruir"
L["TOGGLE_OPTIONS_FRAME"] = "Alternar marco de opciones"
L["TOGGLE_SELL_FRAME"] = "Alternar marco de venta"
L["TRANSITIONED_DATABASE_MESSAGE"] = "Transición a una nueva base de datos. Se restablecieron las configuraciones existentes, excluidas las listas."
L["UNCOMMON_TEXT"] = "Poco común"
L["USAGE_TEXT"] = "Uso"
L["USE_GUILD_REPAIR_TEXT"] = "Usar hermandad"
L["USE_GUILD_REPAIR_TOOLTIP"] = "Prioriza las reparaciones a cargo de la hermandad cuando estén disponibles."
L["VERBOSE_TEXT"] = "Detalle"
L["VERSION_TEXT"] = "Versión"

