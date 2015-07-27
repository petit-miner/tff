## Telegram messenger Client für Freetz

TFF ist eine Portierung von Telegram für die Wlan Router von AVM mit Freetz.
Die Grundidee Telegram als Source Code bereitzustellen hatte Vitaly Valtman, hier findet ihr sein Repository: https://github.com/vysheng/tg

 ###Installation
Als erstes müsst ihr eine funktionierende Freetz Cross Compiler Toolchain passend für eure Fritzbox erstellt haben(Anleitungen wie dies funktioniert findet ihr hier:http://freetz.org/wiki/help/howtos/common/newbie) , wichtig ist dabei das ihr folgende Pakete auf eurem Linux System installiert habt:

libreadline-dev 
libconfig-dev 
libssl-dev 
lua5.2 
liblua5.2-dev 
libevent-dev 
libjansson-dev 
libpython-dev 
make

Zusätzlich benötigt ihr ein paar Büchereien die über das Freetz Menü
mit make menuconfig ausgewählt werden müssen:

libevent 
openssl
zlib
readline
libconfig
libubacktrace (kann nur angewählt werden wenn ihr den Toolchain Compiler      
                        auf uClibc Version 0.9.33.2 einstellt) 


Clone GitHub Repository

     git clone --recursive https://github.com/vysheng/tg.git && cd tg

### Python Support

Momentan gibt es noch keinen Python Support, das steht aber noch auf der TO DO Liste.

 ### Unterstützte Befehle

### Nachrichten versenden löschen usw.

* **msg** \<peer\> Text - sends message to this peer
* **fwd** \<user\> \<msg-seqno\> - forward message to user. You can see message numbers starting client with -N
* **chat_with_peer** \<peer\> starts one on one chat session with this peer. /exit or /quit to end this mode.
* **add_contact** \<phone-number\> \<first-name\> \<last-name\> - tries to add contact to contact-list by phone
* **rename_contact** \<user\> \<first-name\> \<last-name\> - tries to rename contact. If you have another device it will be a fight
* **mark_read** \<peer\> - mark read all received messages with peer
* **delete_msg** \<msg-seqno\> - deletes message (not completly, though)
* **restore_msg** \<msg-seqno\> - restores delete message. Impossible for secret chats. Only possible short time (one hour, I think) after deletion

#### Multimedia

* **send_photo** \<peer\> \<photo-file-name\> - sends photo to peer
* **send_video** \<peer\> \<video-file-name\> - sends video to peer
* **send_text** \<peer\> \<text-file-name> - sends text file as plain messages
* **load_photo**/load_video/load_video_thumb/load_audio/load_document/load_document_thumb \<msg-seqno\> - loads photo/video/audio/document to download dir
* **view_photo**/view_video/view_video_thumb/view_audio/view_document/view_document_thumb \<msg-seqno\> - loads photo/video to download dir and starts system default viewer
* **fwd_media** \<msg-seqno\> send media in your message. Use this to prevent sharing info about author of media (though, it is possible to determine user_id from media itself, it is not possible get access_hash of this user)
* **set_profile_photo** \<photo-file-name\> - sets userpic. Photo should be square, or server will cut biggest central square part


#### Gruppenchats Optionen 

* **chat_info** \<chat\> - prints info about chat
* **chat_add_user** \<chat\> \<user\> - add user to chat
* **chat_del_user** \<chat\> \<user\> - remove user from chat
* **rename_chat** \<chat\> \<new-name\>
* **create_group_chat** \<chat topic\> \<user1\> \<user2\> \<user3\> ... - creates a groupchat with users, use chat_add_user to add more users
* **chat_set_photo** \<chat\> \<photo-file-name\> - sets group chat photo. Same limits as for profile photos.

#### Suche

* **search** \<peer\> pattern - searches pattern in messages with peer
* **global_search** pattern - searches pattern in all messages

#### Verschlüsselte Chats

* **create_secret_chat** \<user\> - creates secret chat with this user
* **visualize_key** \<secret_chat\> - prints visualization of encryption key. You should compare it to your partner's one
* **set_ttl** \<secret_chat\> \<ttl\> - sets ttl to secret chat. Though client does ignore it, client on other end can make use of it
* **accept_secret_chat** \<secret_chat\> - manually accept secret chat (only useful when starting with -E key)

#### Statistiken und weitere Informationen

* **user_info** \<user\> - prints info about user
* **history** \<peer\> [limit] - prints history (and marks it as read). Default limit = 40
* **dialog_list** - prints info about your dialogs
* **contact_list** - prints info about users in your contact list
* **suggested_contacts** - print info about contacts, you have max common friends
* **stats** - just for debugging
* **show_license** - prints contents of GPLv2
* **help** - prints this help
* **get_self** - get our user info

#### Import und Export von Kontaktdaten
* **export_card** - print your 'card' that anyone can later use to import your contact
* **import_card** \<card\> - gets user by card. You can write messages to him after that.

#### Beenden von Telegram 
* **quit** - quit
* **safe_quit** - wait for all queries to end then quit
# tff
