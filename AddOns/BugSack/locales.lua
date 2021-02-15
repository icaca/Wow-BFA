
local addonName, addon = ...

local L = {}
L["All bugs"] = "All bugs"
L["All stored bugs have been exterminated painfully."] = "All stored bugs have been exterminated painfully."
L["autoDesc"] = "Makes the BugSack open automatically when an error is encountered, but not while you are in combat."
L["Auto popup"] = "Auto popup"
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"
L["chatFrameDesc"] = "Prints a reminder to the chat frame when an error is encountered. Doesn't print the whole error, just a reminder!"
L["Chatframe output"] = "Chatframe output"
L["Current session"] = "Current session"
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d bugs have been sent to %s. He must have BugSack to be able to examine them."
L["Failure to deserialize incoming data from %s."] = "Failure to deserialize incoming data from %s."
L["Filter addon mistakes"] = "Filter addon mistakes"
L["filterDesc"] = "Whether BugSack should treat ADDON_ACTION_BLOCKED and ADDON_ACTION_FORBIDDEN events as bugs or not. If that doesn't make sense, just ignore this option."
L["Font size"] = "Font size"
L["Large"] = "Large"
L["Limit"] = "Limit"
L["Local (%s)"] = "Local (%s)"
L["Medium"] = "Medium"
L["minimapDesc"] = "Shows the BugSack icon around your minimap."
L["Minimap icon"] = "Minimap icon"
L["Mute"] = "Mute"
L["muteDesc"] = "Prevents BugSack from playing the any sound when a bug is detected, no matter what you select in the dropdown below."
L["Next >"] = "Next >"
L["Player needs to be a valid name."] = "Player needs to be a valid name."
L["< Previous"] = "< Previous"
L["Previous session"] = "Previous session"
L["saveDesc"] = "Saves the bugs in the database. If this is off, bugs will not persist in the sack from session to session."
L["Save errors"] = "Save errors"
L["Send"] = "Send"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Send all bugs from the currently viewed session (%d) in the sack to the player specified below."
L["Send bugs"] = "Send bugs"
L["Sent by %s (%s)"] = "Sent by %s (%s)"
L["Small"] = "Small"
L["Sound"] = "Sound"
L["There's a bug in your soup!"] = "There's a bug in your soup!"
L["Throttle at excessive amount"] = "Throttle at excessive amount"
L["throttleDesc"] = "Sometimes addons can generate hundreds of bugs per second, which can lock up the game. Enabling this option will throttle bug grabbing, preventing lockup when this happens."
L["Today"] = "Today"
L["Toggle the minimap icon."] = "Toggle the minimap icon."
L["wipeDesc"] = "Exterminates all stored bugs from the database."
L["Wipe saved bugs"] = "Wipe saved bugs"
L["X-Large"] = "X-Large"
L["You have no bugs, yay!"] = "You have no bugs, yay!"
L["You've received %d bugs from %s."] = "You've received %d bugs from %s."

local locale = GetLocale()
if locale == "deDE" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d Fehler wurden an %s gesendet. Er muss BugSack haben, um in der Lage zu sein, die Fehler zu lesen."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fKlicken|r, um BugSack mit dem letzten Fehler anzuzeigen. |cffeda55fShift-Klicken|r, um das UI neu zu laden. |cffeda55fAlt-Klicken|r, um alle Fehler zu löschen."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack benötigt das |r|cff44ff44!BugGrabber|r|cffff4411 Addon, das von der Seite heruntergeladen werden kann, wo du auch BugSack bekommen hast.|r"
L["< Previous"] = "< Vorheriger"
L["All bugs"] = "Alle Fehler"
L["All stored bugs have been exterminated painfully."] = "Alle gespeicherten Fehler wurden auf schmerzvollste Art gelöscht."
L["Auto popup"] = "Automatisches Aufpoppen"
L["autoDesc"] = "Öffnet BugSack automatisch, sobald ein Fehler auftritt, außer man befindet sich im Kampf."
L["Chatframe output"] = "Chatfensterausgabe"
L["chatFrameDesc"] = "Gibt eine Erinnerung im Chatfenster aus, dass ein Fehler aufgetreten ist. Zeigt nicht den kompletten Fehler an!"
L["Current session"] = "Derzeitige Sitzung"
L["Failure to deserialize incoming data from %s."] = "Fehler beim Deserialisieren eingehender Daten von %s."
L["Filter addon mistakes"] = "Falsche Addonfehler filtern"
L["filterDesc"] = "Bestimmt, ob BugSack die Events ADDON_ACTION_BLOCKED und ADDON_ACTION_FORBIDDEN als Fehler betrachten soll oder nicht. Falls dies keinen Sinn ergibt, ignoriere die Option."
L["Font size"] = "Schriftgröße"
L["Large"] = "Groß"
L["Limit"] = "Begrenzung"
L["Local (%s)"] = "Lokal (%s)"
L["Medium"] = "Mittel"
L["Minimap icon"] = "Minikartensymbol"
L["minimapDesc"] = "Zeigt oder versteckt das BugSack-Symbol an deiner Minikarte."
L["Mute"] = "Stumm"
L["muteDesc"] = "Hindert BugSack daran, den 'Worms'-Sound abzuspielen, sobald ein Fehler entdeckt wurde."
L["Next >"] = "Nächster >"
L["Player needs to be a valid name."] = "Spieler muss ein gültiger Name sein."
L["Previous session"] = "Vorherige Sitzung"
L["Save errors"] = "Fehler speichern"
L["saveDesc"] = "Speichert Fehler in der Datenbank. Falls diese Option ausgeschalten ist, werden Fehler nicht von Sitzung zu Sitzung im Sack bleiben."
L["Send"] = "Senden"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Sendet alle Fehler der momentanen Sitzung (%d) im Sack an den unten stehenden Spieler."
L["Send bugs"] = "Sende Fehler"
L["Sent by %s (%s)"] = "Gesendet von %s (%s)"
L["Small"] = "Klein"
L["Sound"] = "Sound"
L["There's a bug in your soup!"] = "Du hast einen Fehler entdeckt!"
L["Throttle at excessive amount"] = "Bei Übermaß temporär drosseln"
L["throttleDesc"] = "Manchmal können Addons hunderte von Fehlern pro Sekunde generieren, was wiederum das Spiel einfrieren lassen kann. Das Aktivieren dieser Option drosselt die Fehleraufzeichnung und verhindert das Einfrieren des Spiels."
L["Today"] = "Heute"
L["Toggle the minimap icon."] = "Zeigt oder versteckt das Minikartensymbol."
L["Wipe saved bugs"] = "Gespeich. Fehler löschen"
L["wipeDesc"] = "Löscht alle gespeicherten Fehler aus der Datenbank."
L["X-Large"] = "Sehr groß"
L["You have no bugs, yay!"] = "Du hast keine Fehler, jeehaa!"
L["You've received %d bugs from %s."] = "Du hast %d Fehler von %s empfangen."

elseif locale == "esES" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "Enviado %s errores a %s. Él o ella debe tener BugSack para verlos."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fClic|r para abrir BugSack con el último error. |cffeda55fMayús clic|r para volver a cargar la interfaz. |cffeda55fAlt clic|r para borrar todos errores."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack requirere el accesorio |r|cff44ff44!BugGrabber|r|cffff4411, que puedes descargar desde el mismo lugar que has descargado BugSack.|r"
L["< Previous"] = "< Previo"
L["All bugs"] = "Todos errores"
L["All stored bugs have been exterminated painfully."] = "Todos los errores almacenados se han limpiado."
L["Auto popup"] = "Auto aparecen"
L["autoDesc"] = "Aparecer la BugSack automáticamente cuando se produce un error, pero no cuando estás en combate."
L["Chatframe output"] = "Salida en chat"
L["chatFrameDesc"] = "Mostrar un aviso en la ventana de chat cuando se produce un error."
L["Current session"] = "Sesión actual"
L["Failure to deserialize incoming data from %s."] = "No se puede deserializar el dato recibido de %s."
L["Filter addon mistakes"] = "Ignorar los eventos"
L["filterDesc"] = "Si esta opción está activada, BugSack tratará los eventos ADDON_ACTION_BLOCKED y ADDON_ACTION_FORBIDDEN como errores. Si no entiendes esto, simplemente ignorarlo."
L["Font size"] = "Tamaño de fuente"
L["Large"] = "Grande"
L["Limit"] = "Límite"
L["Local (%s)"] = "Local (%s)"
L["Medium"] = "Medio"
L["Minimap icon"] = "Icono en minimapa"
L["minimapDesc"] = "Mostrar el icono de BugSack en la minimapa."
L["Mute"] = "Silenciar"
L["muteDesc"] = "No reproducir un sonido cuando se produce un error."
L["Next >"] = "Siguiente >"
L["Player needs to be a valid name."] = "Nombre no válido."
L["Previous session"] = "Sesión anterior"
L["Save errors"] = "Almacenar errores"
L["saveDesc"] = "Almacenar errores entre sesiones."
L["Send"] = "Enviar"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Enviar todos los errores de la sesión seleccionada (%d) al jugador se especifican abajo."
L["Send bugs"] = "Enviar errores"
L["Sent by %s (%s)"] = "Enviado por %s (%s)"
L["Small"] = "Pequeño"
L["Sound"] = "Sonido"
L["There's a bug in your soup!"] = "Ha ocurrido un error!"
L["Throttle at excessive amount"] = "Limitar en cantidad excesiva"
L["throttleDesc"] = "A veces accesorios puede generar cientos de errores por segundo, lo que puede bloquear el juego. Al habilitar esta opción, se limitará la captura de errores, evitando el bloqueo cuando esto ocurre."
L["Today"] = "Hoy"
L["Toggle the minimap icon."] = "Mostrar u ocultar el icono del minimapa"
L["Wipe saved bugs"] = "Limpiar errores almacenados"
L["wipeDesc"] = "Borrar todos los errores almacenados."
L["X-Large"] = "Extra grande"
L["You have no bugs, yay!"] = "No tienes ningún errores! ¡Hurra!"
L["You've received %d bugs from %s."] = "Has recibido %d errores por %s."

elseif locale == "esMX" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "Enviado %s errores a %s. Él o ella debe tener BugSack para verlos."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fClic|r para abrir BugSack con el último error. |cffeda55fMayús clic|r para volver a cargar la interfaz. |cffeda55fAlt clic|r para borrar todos errores."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack requirere el accesorio |r|cff44ff44!BugGrabber|r|cffff4411, que puedes descargar desde el mismo lugar que has descargado BugSack.|r"
L["< Previous"] = "< Previo"
L["All bugs"] = "Todos errores"
L["All stored bugs have been exterminated painfully."] = "Todos los errores almacenados se han limpiado."
L["Auto popup"] = "Auto aparecen"
L["autoDesc"] = "Aparecer la BugSack automáticamente cuando se produce un error, pero no cuando estás en combate."
L["Chatframe output"] = "Salida en chat"
L["chatFrameDesc"] = "Mostrar un aviso en la ventana de chat cuando se produce un error."
L["Current session"] = "Sesión actual"
L["Failure to deserialize incoming data from %s."] = "No se puede deserializar el dato recibido de %s."
L["Filter addon mistakes"] = "Ignorar los eventos"
L["filterDesc"] = "Si esta opción está activada, BugSack tratará los eventos ADDON_ACTION_BLOCKED y ADDON_ACTION_FORBIDDEN como errores. Si no entiendes esto, simplemente ignorarlo."
L["Font size"] = "Tamaño de fuente"
L["Large"] = "Grande"
L["Limit"] = "Límite"
L["Local (%s)"] = "Local (%s)"
L["Medium"] = "Medio"
L["Minimap icon"] = "Icono en minimapa"
L["minimapDesc"] = "Mostrar el icono de BugSack en la minimapa."
L["Mute"] = "Silenciar"
L["muteDesc"] = "No reproducir un sonido cuando se produce un error."
L["Next >"] = "Siguiente >"
L["Player needs to be a valid name."] = "Nombre no válido."
L["Previous session"] = "Sesión anterior"
L["Save errors"] = "Almacenar errores"
L["saveDesc"] = "Almacenar errores entre sesiones."
L["Send"] = "Enviar"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Enviar todos los errores de la sesión seleccionada (%d) al jugador se especifican abajo."
L["Send bugs"] = "Enviar errores"
L["Sent by %s (%s)"] = "Enviado por %s (%s)"
L["Small"] = "Pequeño"
L["Sound"] = "Sonido"
L["There's a bug in your soup!"] = "Ha ocurrido un error!"
L["Throttle at excessive amount"] = "Limitar en cantidad excesiva"
L["throttleDesc"] = "A veces accesorios puede generar cientos de errores por segundo, lo que puede bloquear el juego. Al habilitar esta opción, se limitará la captura de errores, evitando el bloqueo cuando esto ocurre."
L["Today"] = "Hoy"
L["Toggle the minimap icon."] = "Mostrar u ocultar el icono del minimapa"
L["Wipe saved bugs"] = "Limpiar errores almacenados"
L["wipeDesc"] = "Borrar todos los errores almacenados."
L["X-Large"] = "Extra grande"
L["You have no bugs, yay!"] = "No tienes ningún errores! ¡Hurra!"
L["You've received %d bugs from %s."] = "Has recibido %d errores por %s."

elseif locale == "frFR" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d erreurs ont été transmises à %s. Il doit avoir BugSack pour pouvoir les examiner."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fClic|r pour ouvrir BugSack sur la dernière erreur. |cffeda55fMaj-Clic|r pour recharger l'interface utilisateur. |cffeda55fAlt-Clic|r pour effacer le contenu du sac."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack a besoin de l'addon |r|cff44ff44!BugGrabber|r|cffff4411, que vous pouvez télécharger depuis le même endroit que BugSack. Bonne chasse aux bugs!|r"
L["< Previous"] = "< Précédent"
L["All bugs"] = "Tous les bugs"
L["All stored bugs have been exterminated painfully."] = "Toutes les erreurs sauvegardées ont été effacées péniblement."
L["Auto popup"] = "Popup automatique"
L["autoDesc"] = "Fait en sorte que BugSack s'ouvre automatiquement quand une erreur est rencontrée."
L["Chatframe output"] = "Sortie fenêtre de conversation"
L["chatFrameDesc"] = "Affiche un rappel dans la fenêtre de conversation quand une erreur est rencontrée. N'affiche pas l'erreur complète, juste un rappel!"
L["Current session"] = "Session actuelle"
L["Failure to deserialize incoming data from %s."] = "Impossible de dé-sérialiser les données de %s."
L["Filter addon mistakes"] = "Filtrer les erreurs des addons"
L["filterDesc"] = "Défini si BugSack devrait traiter les évènements ADDON_ACTION_BLOCKED et ADDON_ACTION_FORBIDDEN comme des erreurs ou non. Si cela n'a aucun sens, ignorez cette option."
L["Font size"] = "Taille de la police"
L["Large"] = "Grand"
L["Limit"] = "Limite"
L["Local (%s)"] = "Local (%s)"
L["Medium"] = "Moyen"
L["Minimap icon"] = "Icône de la minicarte"
L["minimapDesc"] = "Affiche l'icône de BugSack autour de votre minicarte."
L["Mute"] = "Muet"
L["muteDesc"] = "Empêche BugSack de jouer le son 'Worms' lorsqu'un bug est détecté."
L["Next >"] = "Suivant >"
L["Player needs to be a valid name."] = "Le joueur doit avoir un nom valide"
L["Previous session"] = "Session précédente"
L["Save errors"] = "Sauver les erreurs"
L["saveDesc"] = "Saves the bugs in the database. If this is off, bugs will not persist in the sack from session to session."
L["Send"] = "Envoyé"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Envoyer toutes les erreurs de la session courante (%d) dans le sac du joueur spécifié ci-dessous."
L["Send bugs"] = "Envoyer les erreurs"
L["Sent by %s (%s)"] = "Envoyé par (%s)"
L["Small"] = "Petit"
L["Sound"] = "Son"
L["There's a bug in your soup!"] = "Vous avec un insecte dans votre soupe!"
L["Throttle at excessive amount"] = "Réduire à partir un certain nombre"
L["throttleDesc"] = "Parfois, les addons peuvent générer des centaines d'erreurs par secondes, ceci peut entrainer un bloquage du jeu. Activer cette option permettra de réduire la récupération des erreurs, prévenant le blocage quand cela se produit."
L["Today"] = "Aujourd'hui"
L["Toggle the minimap icon."] = "Afficher l'icône de la minicarte"
L["Wipe saved bugs"] = "Suppr. les erreurs"
L["wipeDesc"] = "Effacer toutes les erreurs sauvegardées de la base."
L["X-Large"] = "Très grande"
L["You have no bugs, yay!"] = "Vous n'avez aucune erreur, youpi!"
L["You've received %d bugs from %s."] = "Vous avez reçu %d erreurs de %s."

elseif locale == "koKR" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d개의 오류가 %s|1으로;로; 전송되었습니다. 오류를 분석하려면 BugSack 애드온이 있어야 합니다."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55f클릭|r : BugSack으로 최근 오류 보기. |cffeda55fShift-클릭|r : 사용자 인터페이스 다시 불러오기. |cffeda55fAlt-클릭|r : 저장된 모든 오류 제거."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack|r은 |cff44ff44!BugGrabber|r|cffff4411 애드온을 필요로 하며, BugSack과 동일한 곳에서 다운로드할 수 있습니다. 행복한 벌레 사냥되세요!|r"
L["< Previous"] = "< 이전"
L["All bugs"] = "모든 오류"
L["All stored bugs have been exterminated painfully."] = "저장된 모든 오류가 삭제되었습니다."
L["Auto popup"] = "자동 팝업"
L["autoDesc"] = "오류가 발생하면 전투 중이 아닐 때만 BugSack이 자동으로 열리도록 합니다."
L["Chatframe output"] = "대화창 출력"
L["chatFrameDesc"] = "오류가 발견되면 대화창에 출력해서 알립니다. 전체 오류가 출력되지 않으며, 그냥 알립니다!"
L["Current session"] = "현재 세션"
L["Failure to deserialize incoming data from %s."] = "%s|1으로;로;부터 들어오는 데이터 분석에 실패했습니다."
L["Filter addon mistakes"] = "애드온 실패 분류"
L["filterDesc"] = "BugSack이 ADDON_ACTION_FORBIDDEN 및 ADDON_ACTION_BLOCKED 이벤트를 오류로 취급할지 결정합니다. 잘 모른다면 이 옵션은 무시해도 좋습니다."
L["Font size"] = "글꼴 크기"
L["Large"] = "크게"
L["Limit"] = "제한"
L["Local (%s)"] = "로컬 (%s)"
L["Medium"] = "중간"
L["Minimap icon"] = "미니맵 아이콘"
L["minimapDesc"] = "미니맵 주변에 BugSack 아이콘을 표시합니다."
L["Mute"] = "음소거"
L["muteDesc"] = "아래 드롭다운에서 선택을 했더라도 오류를 감지했을 때 BugSack이 재생하는 소리를 끕니다."
L["Next >"] = "다음 >"
L["Player needs to be a valid name."] = "플레이어가 올바른 이름이 필요합니다."
L["Previous session"] = "이전 세션"
L["Save errors"] = "오류 저장"
L["saveDesc"] = "오류를 데이터베이스에 저장합니다. 이 옵션을 끄면, 이전 세션의 내용이 유지되지 않습니다."
L["Send"] = "보내기"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "아래 입력한 플레이어에게 현재 보고있는 세션(%d)의 모든 오류를 전송합니다."
L["Send bugs"] = "오류 전송"
L["Sent by %s (%s)"] = "%s|1으로;로; 보냄 (%s)"
L["Small"] = "작게"
L["Sound"] = "소리"
L["There's a bug in your soup!"] = "오류 발생!"
L["Throttle at excessive amount"] = "과도한 양의 조절"
L["throttleDesc"] = "일부 애드온은 초당 수백개의 오류를 발생하여 게임을 중지시킬 수 있습니다. 이 옵션을 활성화하면 대량의 오류가 발생할 때 이러한 잠금 조치를 방지할 수 있습니다."
L["Today"] = "금일"
L["Toggle the minimap icon."] = "미니맵 아이콘 토글."
L["Wipe saved bugs"] = "저장된 오류 삭제"
L["wipeDesc"] = "데이터베이스에 저장된 모든 오류 정보를 삭제합니다."
L["X-Large"] = "매우 크게"
L["You have no bugs, yay!"] = "발생한 오류가 없습니다, 아싸!"
L["You've received %d bugs from %s."] = "%s|1으로;로;부터 %d개의 오류를 수신했습니다."

elseif locale == "ruRU" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d багов было отослано получателю %s. Получатель должен иметь установленный BugSack для просмотра."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fКлик|r чтобы открыть BugSack с последним пойманным багом. |cffeda55fShift-Клик|r Перегрузить пользовательский интерфейс (аналог /rl). |cffeda55fAlt-Клик|r для очистки списка."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack'у необходим аддон |r|cff44ff44!BugGrabber|r|cffff4411, который можно скачать там же, где Вы взяли BugSack. Удачной охоты на баги!|r"
L["< Previous"] = "< Предыдущие"
L["All bugs"] = "Все баги"
L["All stored bugs have been exterminated painfully."] = "Все сохраненные баги были жестоко удалены."
L["Auto popup"] = "Автовсплытие"
L["autoDesc"] = "Открывает окошко BugSack автоматически при ошибке, но только если не в бою."
L["Chatframe output"] = "Вывод в окно чата"
L["chatFrameDesc"] = "Выводит в чат напоминание, что произошла ошибка. Не ошибку, а напоминание!"
L["Current session"] = "Текущая сессия"
L["Failure to deserialize incoming data from %s."] = "Не смог разобрать входящие данные от %s."
L["Filter addon mistakes"] = "Фильтровать ошибки аддонов"
L["filterDesc"] = "Как BugSack'у реагировать на события ADDON_ACTION_BLOCKED и ADDON_ACTION_FORBIDDEN - баги или нет. Если для Вас не имеет значения, просто игнорируйте данную опцию."
L["Font size"] = "Размер шрифта"
L["Large"] = "Большой"
L["Limit"] = "Лимит"
L["Local (%s)"] = "Локально (%s)"
L["Medium"] = "Средний"
L["Minimap icon"] = "Иконка у миникарты"
L["minimapDesc"] = "Показывает иконку BugSack около миникарты."
L["Mute"] = "Без звука"
L["muteDesc"] = "Отучивает BugSack проигрывать звук в стиле 'Worms' когда произошла ошибка."
L["Next >"] = "Следующие >"
L["Player needs to be a valid name."] = "Необходимо правильное имя игрока."
L["Previous session"] = "Предыдущая сессия"
L["Save errors"] = "Сохранить ошибки"
L["saveDesc"] = "Сохранять баги в базе. Если отключено, список и описание багов сохраняться между сессиями не будут."
L["Send"] = "Отослать"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Отослать все баги из текущей просматриваемой сессии (%d) игроку, указанному ниже."
L["Send bugs"] = "Отослать баги"
L["Sent by %s (%s)"] = "Прислано от %s (%s)"
L["Small"] = "Маленький"
L["Sound"] = "Звук"
L["There's a bug in your soup!"] = "У тебя муха в супе!"
L["Throttle at excessive amount"] = "Притормаживать при спаме багов"
L["throttleDesc"] = "Иногда аддоны могут генерировать сотни багов в секунду, что может заблокировать игру. Включение этой опции позволит прерывать перехват ошибок, если будет слишком большой поток."
L["Today"] = "Сегодня"
L["Toggle the minimap icon."] = "Вкл./Выкл. иконку у миникарты."
L["Wipe saved bugs"] = "Удалить сохраненные баги"
L["wipeDesc"] = "Удаляет все сохраненные баги из базы."
L["X-Large"] = "Очень большой"
L["You have no bugs, yay!"] = "Ух ты, нет багов!"
L["You've received %d bugs from %s."] = "Вы получили %d багов от %s."

elseif locale == "zhCN" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d个错误已经发送给%s。他必须安装 BugSack 插件才能查看错误信息。"
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55f点击|r打开 BugSack 及最后一错误信息。|cffeda55fShift-点击|r重新加载用户界面。|cffeda55fAlt-点击|r清除储存错误信息。"
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack 需要 |r|cff44ff44!BugGrabber|r|cffff4411 插件, 你可以从相同地方下载 BugSack。猎虫愉快！|r"
L["< Previous"] = "<前一个"
L["All bugs"] = "全部错误"
L["All stored bugs have been exterminated painfully."] = "所有已保存的错误已经被清除。"
L["Auto popup"] = "自动弹出"
L["autoDesc"] = "遇到错误是否自动弹出 BugSack 窗口。"
L["Chatframe output"] = "聊天栏输出"
L["chatFrameDesc"] = "当发生错误的时，在聊天栏中显示。不是整个错误，只是一个提醒！"
L["Current session"] = "目前节录"
L["Failure to deserialize incoming data from %s."] = "反序列化失败输入数据来自 %s。"
L["Filter addon mistakes"] = "过滤插件错误"
L["filterDesc"] = "不论 BugSack 可能对 ADDON_ACTION_BLOCKED 和 ADDON_ACTION_FORBIDDEN 事件认为错误与否。如果这样做没有意义，忽略这个选项。"
L["Font size"] = "字体尺寸"
L["Large"] = "大"
L["Limit"] = "限制"
L["Local (%s)"] = "本地（%s）"
L["Medium"] = "中"
L["Minimap icon"] = "小地图按钮"
L["minimapDesc"] = "显示此 BugSack 图标环绕小地图。"
L["Mute"] = "静音"
L["muteDesc"] = "当一个错误被检测到时阻止 BugSack 播放任何音效，无视下面的下拉列表中选择。"
L["Next >"] = "下一个>"
L["Player needs to be a valid name."] = "玩家需要有一个有效的名字。"
L["Previous session"] = "在节录之前"
L["Save errors"] = "保存错误"
L["saveDesc"] = "保存在数据库中的错误。如果次选项关闭，错误也不会从会话到会话。"
L["Send"] = "发送"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "发送当前查看会话（%d）所有错误给下列玩家。"
L["Send bugs"] = "发送错误"
L["Sent by %s (%s)"] = "%s发送（%s）"
L["Small"] = "小"
L["Sound"] = "音效"
L["There's a bug in your soup!"] = "这里有一个恶心的错误！"
L["Throttle at excessive amount"] = "过度错误数量过滤"
L["throttleDesc"] = "一些插件可能每秒生成成百个错误，从而影响了正常游戏。启用此选项，将会截流错误，防止发生影响正常游戏。"
L["Today"] = "今日"
L["Toggle the minimap icon."] = "切换小地图按钮。"
L["Wipe saved bugs"] = "清除已保存错误"
L["wipeDesc"] = "清除数据库中所有已保存错误。"
L["X-Large"] = "超大"
L["You have no bugs, yay!"] = "没有发生错误。\\^o^/"
L["You've received %d bugs from %s."] = "你已接收到%d个错误从%s。"

elseif locale == "zhTW" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d個錯誤已經傳送給%s。他必須有BugSack來查看錯誤訊息。"
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55f點擊|r開啟BugSack最後錯誤訊息。|cffeda55fShift-點擊|r重新載入使用者介面。|cffeda55fAlt-點擊|r清除錯誤訊息。"
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack需要|r|cff44ff44!BugGrabber|r|cffff4411插件，你可以從你下載BugSack相同的地方來下載。獵蟲愉快!|r"
L["< Previous"] = "< 上一個"
L["All bugs"] = "全部錯誤"
L["All stored bugs have been exterminated painfully."] = "所有儲存的錯誤已經被清除。"
L["Auto popup"] = "自動彈出"
L["autoDesc"] = "當發生錯誤時自動開啟BugSack，但是不在戰鬥中開啟。"
L["Chatframe output"] = "聊天框架輸出"
L["chatFrameDesc"] = "當發生錯誤時輸出提醒到聊天框架。不是輸出所有錯誤，只是一個提醒！"
L["Current session"] = "這次"
L["Failure to deserialize incoming data from %s."] = "從%s傳來的資料反序列化失敗。"
L["Filter addon mistakes"] = "過濾插件錯誤"
L["filterDesc"] = "不論BugSack可能對ADDON_ACTION_BLOCKED 和 ADDON_ACTION_FORBIDDEN事件認為是錯誤與否。如果這樣做沒有意義，只要忽略這個設定。"
L["Font size"] = "字型大小"
L["Large"] = "大"
L["Limit"] = "限制"
L["Local (%s)"] = "本地 (%s)"
L["Medium"] = "中"
L["Minimap icon"] = "小地圖圖示"
L["minimapDesc"] = "在小地圖四周顯示BugSack圖示。"
L["Mute"] = "靜音"
L["muteDesc"] = "預防BugSack發現有錯誤時播放任何聲音，不管你在下列選項選了什麼。"
L["Next >"] = "下一個 >"
L["Player needs to be a valid name."] = "玩家需要有一個有效的名字。"
L["Previous session"] = "上一次"
L["Save errors"] = "儲存錯誤"
L["saveDesc"] = "儲存錯誤在資料庫。如果此設定關閉，將不會儲存每一次錯誤。"
L["Send"] = "傳送"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "傳送這次(%d)所有錯誤給以下玩家。"
L["Send bugs"] = "傳送錯誤"
L["Sent by %s (%s)"] = "由%s傳送(%s)"
L["Small"] = "小"
L["Sound"] = "音效"
L["There's a bug in your soup!"] = "在你的湯裡有一隻臭蟲啊！"
L["Throttle at excessive amount"] = "調節錯誤數量"
L["throttleDesc"] = "有時插件可能每秒產生上百個錯誤，進而影響遊戲。啟用此設定，將會扼殺錯誤，防止發生影響遊戲。"
L["Today"] = "今天"
L["Toggle the minimap icon."] = "切換小地圖圖示。"
L["Wipe saved bugs"] = "清除儲存的錯誤"
L["wipeDesc"] = "清除資料庫中所有儲存的錯誤。"
L["X-Large"] = "超大"
L["You have no bugs, yay!"] = "你沒有發生錯誤。\\^o^//"
L["You've received %d bugs from %s."] = "從%s收到%d個錯誤。"

elseif locale == "ptBR" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d falhas foram enviadas para %s. Ele deve ter o BugSack para poder examiná-las."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fClique|r para abrir o BugSack com a última falha. |cffeda55fShift+Clique|r para recarregar a interface de usuário. |cffeda55fAlt+Clique|r para limpar o saco."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack requer o addon |r|cff44ff44!BugGrabber|r|cffff4411, que você pode baixar do mesmo lugar que você baixou o BugSack. Feliz caça aos insetos (falhas)!|r"
L["< Previous"] = "< Anterior"
L["All bugs"] = "Todas as falhas"
L["All stored bugs have been exterminated painfully."] = "Todas as falhas armazenadas foram exterminadas dolorosamente."
L["Auto popup"] = "Janela automática"
L["autoDesc"] = "Faz o BugSack abrir automaticamente quando um erro for encontrado, mas não enquanto você estiver em combate."
L["Chatframe output"] = "Saída do quadro de chat"
L["chatFrameDesc"] = "Imprime um lembrete no quadro de chat quando um erro for encontrado. Não imprime o erro completo, só um lembrete!"
L["Current session"] = "Sessão atual"
L["Failure to deserialize incoming data from %s."] = "Falha ao desserializar dados que chegam de %s."
L["Filter addon mistakes"] = "Filtrar enganos de addons"
L["filterDesc"] = "Se o BugSack deveria tratar os eventos ADDON_ACTION_BLOCKED e ADDON_ACTION_FORBIDDEN como falhas ou não. Se isso não fizer sentido, apenas ignore essa opção."
L["Font size"] = "Tamanho da fonte"
L["Large"] = "Grande"
L["Limit"] = "Limite"
L["Local (%s)"] = "Local (%s)"
L["Medium"] = "Médio"
L["Minimap icon"] = "Ícone do minimapa"
L["minimapDesc"] = "Mostra o ícone do BugSack ao redor do seu minimapa."
L["Mute"] = "Mudo"
L["muteDesc"] = "Previne o BugSack de tocar o qualquer som quando uma falha for detectada, independente do que estiver selecionado na caixa abaixo."
L["Next >"] = "Próximo >"
L["Player needs to be a valid name."] = "O jogador precisa ter um nome válido."
L["Previous session"] = "Sessão anterior"
L["Save errors"] = "Salvar erros"
L["saveDesc"] = "Salva as falhas no banco de dados. Se isso estiver desativado, as falhas não irão persistir de sessão para outra."
L["Send"] = "Enviar"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Enviar todas as falhas da atual sessão visualizada (%d) no saco para o jogador especificado abaixo."
L["Send bugs"] = "Enviar falhas"
L["Sent by %s (%s)"] = "Enviado por %s (%s)"
L["Small"] = "Pequeno"
L["Sound"] = "Som"
L["There's a bug in your soup!"] = "Tem um inseto (falha) em sua sopa!"
L["Throttle at excessive amount"] = "Suprimir quando em grande quantidade"
L["throttleDesc"] = "Algumas vezes addons podem gerar centenas de falhas por segundo, o que pode travar o jogo. Ao habilitar essa opção acontecerá uma regulação na captura de falhas, prevenindo travamentos quando isso acontecer."
L["Today"] = "Hoje"
L["Toggle the minimap icon."] = "Ligar ícone no minimapa."
L["Wipe saved bugs"] = "Descartar falhas salvas"
L["wipeDesc"] = "Extermina todas as falhas salvas no banco de dados."
L["X-Large"] = "X-Grande"
L["You have no bugs, yay!"] = "Você não possui falhas, êêê!"
L["You've received %d bugs from %s."] = "Você recebeu %d falhas de %s."

elseif locale == "itIT" then
L["%d bugs have been sent to %s. He must have BugSack to be able to examine them."] = "%d bugs sono stati inviati a %s. Devi avere BugSack installato per poterli esaminarli."
L["|cffeda55fClick|r to open BugSack with the last bug. |cffeda55fShift-Click|r to reload the user interface. |cffeda55fAlt-Click|r to clear the sack."] = "|cffeda55fFai click|r per aprire BugSack con l'ultimo bug. |cffeda55fFai Maiusc-Click|r per ricaricare gli addon. |cffeda55fFai Alt-Click|r per eliminare i bug."
L["|cffff4411BugSack requires the |r|cff44ff44!BugGrabber|r|cffff4411 addon, which you can download from the same place you got BugSack. Happy bug hunting!|r"] = "|cffff4411BugSack richiede l'addon |r|cff44ff44!BugGrabber|r|cffff4411, che puoi scaricare dallo stesso posto da cui hai scaricato BugSack.|r"
L["< Previous"] = "< Precedente"
L["All bugs"] = "Tutti i bug"
L["All stored bugs have been exterminated painfully."] = "Tutti i bug registrati sono stati eliminati con dolore."
L["Auto popup"] = "Auto popup"
L["autoDesc"] = "Apre automaticamente BugSack quando viene rilevato un errore, ma non se sei in combattimento."
L["Chatframe output"] = "Output nella chat"
L["chatFrameDesc"] = "Scrive un avvertimento sulla chat quando un errore viene rilevato. Non scrive l'errore completo, solo un messaggio di attenzione!"
L["Current session"] = "Sessione corrente"
L["Failure to deserialize incoming data from %s."] = "Impossibile leggere i dati inviati da %s."
L["Filter addon mistakes"] = "Filtra errori addon"
L["filterDesc"] = "Scegli se BugSack deve trattare gli eventi ADDON_ACTION_BLOCKED e ADDON_ACTION_FORBIDDEN come bug oppure no. Se non capisci il significato di questa opzione, ignorala."
L["Font size"] = "Dimensione font"
L["Large"] = "Largo"
L["Limit"] = "Limite"
L["Local (%s)"] = "Locale (%s)"
L["Medium"] = "Medio"
L["Minimap icon"] = "Icona minimappa"
L["minimapDesc"] = "Mostra l'icona di BugSack intorno alla minimappa."
L["Mute"] = "Muto"
L["muteDesc"] = "Impedisce a BugSack di riprodurre alcun suono quando un bug viene rilevato, indipendentemente da cosa scegli nel menu qui sotto."
L["Next >"] = "Successivo >"
L["Player needs to be a valid name."] = "Il giocatore deve avere un nome valido."
L["Previous session"] = "Sessione precedente"
L["Save errors"] = "Salva errori"
L["saveDesc"] = "Salva i bug nel database. Se disattivato, i bug verranno eliminati alla fine della sessione."
L["Send"] = "Invia"
L["Send all bugs from the currently viewed session (%d) in the sack to the player specified below."] = "Invia tutti i bug dalla sessione selezionata (%d) al giocatore specificato."
L["Send bugs"] = "Invia bug"
L["Sent by %s (%s)"] = "Inviati da %s (%s)"
L["Small"] = "Piccolo"
L["Sound"] = "Suono"
L["There's a bug in your soup!"] = "Un bug è stato rilevato!"
L["Throttle at excessive amount"] = "Blocca ad una quantità eccessiva"
L["throttleDesc"] = "Alcune volte gli addon possono generare centinaia di bug al secondo, cosa che può bloccare il gioco. Abilitare questa opzione accelererà la cattura dei bug, in modo da impedire un blocco del gioco."
L["Today"] = "Oggi"
L["Toggle the minimap icon."] = "Attiva/Disattiva l'icona della minimappa."
L["Wipe saved bugs"] = "Elimina bug salvati"
L["wipeDesc"] = "Elimina tutti i bug dal database."
L["X-Large"] = "Molto largo"
L["You have no bugs, yay!"] = "Nessun bug rilevato!"
L["You've received %d bugs from %s."] = "Hai ricevuto %d bug da %s."

end

addon.L = L

