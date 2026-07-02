.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV8;
.super Ljava/lang/Object;
.source "StringListsV8.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 82

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tapAction"

    const-string v2, "Back"

    const-string v3, "GoToLocation"

    const-string v4, "doNotSignupForKindleDeals"

    const-string/jumbo v5, "signupForKindleDeals"

    const-string v6, "LookUpDefinition"

    const-string v7, "SyncMostRecentPage"

    const-string v8, "ManualSync"

    const-string v9, "Search"

    const-string v10, "firstButton"

    const-string v11, "ShareProgress"

    const-string v12, "doNotSignupForkindle_deals"

    const-string v13, "SizeChange"

    const-string v14, "SignUp"

    const-string v15, "AddHighlight"

    const-string v16, "DownloadDictionary"

    const-string v17, "AddBookmark"

    const-string v18, "RemoveBookmark"

    const-string v19, "ViewBookmark"

    const-string/jumbo v20, "signupForkindle_deals"

    const-string v21, "CreateCollection"

    const-string v22, "RenameDevice"

    const-string/jumbo v23, "secondButton"

    const-string v24, "CopyToClipBoard"

    const-string v25, "RenameCollection"

    const-string v26, "ChangeHighlightColor"

    const-string v27, "SearchWeb"

    const-string v28, "SyncFurthestPageRead"

    const-string v29, "Enable"

    .line 18
    filled-new-array/range {v1 .. v29}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Book"

    const-string v4, "LibraryFragmentActivity"

    const-string v5, "ReaderNotifications"

    const-string v6, "StandaloneStoreActivity"

    const-string v7, "EndActionsActivity"

    const-string v8, "SearchActivity"

    const-string v9, "TransientActivity"

    const-string v10, "AlertActivity"

    const-string v11, "FTUELoadingActivity"

    const-string v12, "ImageZoomActivity"

    const-string v13, "PdfBookOpenHelperActivity"

    const-string v14, "AuthPortalUIActivity"

    const-string v15, "NotesActivity"

    const-string v16, "XrayActivityThirdParty"

    const-string v17, "EditNoteActivity"

    const-string v18, "AccountConfirmationActivity"

    const-string v19, "BookReaderSearchActivity"

    const-string v20, "PeriodicalContentListActivity"

    const-string v21, "MatchMakerActivity"

    const-string v22, "EditDeviceNameActivity"

    const-string v23, "AddToCollectionActivity"

    const-string v24, "SendToKindleActivity"

    const-string v25, "SendToKindleDetailsActivity"

    const-string v26, "WebViewActivity"

    const-string v27, "Global"

    const-string v28, "SamsungClubLearnMoreActivity"

    const-string v29, "NotificationsActivity"

    const-string v30, "AboutActivity"

    const-string v31, "DownloadErrorActivity"

    const-string v32, "UpgraderActivity"

    const-string v33, "EditCollectionActivity"

    const-string v34, "CoverActivity"

    const-string v35, "FlashcardsActivity"

    const-string v36, "NotebookActivity"

    const-string v37, "WelcomeActivity"

    const-string v38, "KindleLearningObjectActivity"

    const-string v39, "PeriodicalReaderSearchActivity"

    const-string v40, "Chrome"

    const-string v41, "EditFlashcardActivity"

    const-string v42, "KindleLearningObjectDetailActivity"

    const-string v43, "KindleDealsDialog"

    const-string v44, "HOME"

    const-string v45, "DeckListActivity"

    const-string v46, "ReadMoreDialog"

    const-string v47, "FlashcardsDeckMenuActivity"

    const-string v48, "DeckOverviewActivity"

    const-string v49, "SETTINGS"

    const-string v50, "MultiWindow"

    const-string v51, "DictionaryCard"

    const-string v52, "Selection"

    const-string v53, "BOOKS"

    const-string v54, "EditCardActivity"

    const-string v55, "ALL_ITEMS"

    const-string v56, "MrprSync"

    const-string v57, "DOWNLOADED_ITEMS"

    const-string v58, "GRID"

    const-string v59, "ChannelSignupDialog"

    const-string v60, "INFO"

    const-string v61, "QuizModeActivity"

    const-string v62, "com.amazon.kcp.library.LibraryFragmentActivity"

    const-string v63, "DOCS"

    const-string v64, "COLLECTIONS"

    const-string v65, "FEEDBACK"

    const-string v66, "COLLECTION_ITEMS"

    const-string v67, "LIST"

    const-string v68, "NotebookExportSelectionActivity"

    const-string v69, "NEWSSTAND"

    const-string v70, "NotebookExportActivity"

    const-string v71, "SamsungBookDeals"

    const-string v72, "StandaloneStoreActIvity"

    const-string v73, "GoTo"

    const-string v74, "NotePopupDialog"

    const-string v75, "Collections"

    const-string v76, "FprSync"

    const-string v77, "ZoomedImageDialog"

    const-string v78, "LibraryFragmentActivitY"

    const-string v79, "com.amazon.kcp.library.EditDeviceNameActivity"

    const-string v80, "SamsungEdge"

    const-string v81, "Reading"

    .line 49
    filled-new-array/range {v3 .. v81}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "campaignName"

    const-string v2, "messageId"

    const-string v3, "NotificationStatus"

    .line 130
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "general"

    const-string v2, "displayed"

    const-string v3, "kindle_deals"

    const-string/jumbo v4, "validityFailed"

    const-string v5, "kindle_first"

    .line 135
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ChapterStart"

    const-string v2, "ChapterEnd"

    const-string v3, "BookmarkPosition"

    .line 142
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pointType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SCREEN_BRIGHTNESS"

    const-string v4, "FONT_SIZE"

    const-string v5, "NOTIFICATIONS"

    const-string v6, "KINDLE_DEALS"

    const-string v7, "BRIGHTNESS_MODE"

    const-string v8, "COLOR_MODE"

    const-string v9, "LINE_SPACING"

    const-string v10, "LINE_LENGTH"

    const-string v11, "COLUMN_COUNT"

    const-string v12, "FONT_FACE"

    const-string v13, "FONT_FACE_LATIN"

    const-string v14, "DownloadChannel"

    const-string v15, "FONT_FACE_CN"

    const-string v16, "FONT_FACE_JA"

    const-string v17, "FONT_FACE_ALL"

    const-string v18, "DeviceConnectivityState"

    const-string v19, "AirplaneMode"

    const-string v20, "DeviceLocale"

    const-string v21, "IsMultiWindow"

    const-string v22, "KeyboardLanguage"

    const-string v23, "ReadingProgress"

    const-string v24, "ViewType"

    const-string v25, "Sort"

    const-string v26, "VOLUME_KEYS_PAGE_CONTROLS"

    const-string v27, "channel.kindle_deals"

    const-string v28, "PUSH_NOTIFICATIONS"

    const-string v29, "DictionaryDownloaded"

    const-string v30, "DictionaryLanguage"

    const-string v31, "kindle_deals"

    .line 147
    filled-new-array/range {v3 .. v31}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "NARROW"

    const-string v4, "Georgia"

    const-string v5, "WHITE"

    const-string v6, "NONE"

    const-string v7, "BLACK"

    const-string v8, "SEPIA"

    const-string v9, "NORMAL"

    const-string v10, "Droid Serif"

    const-string v11, "Lucida Sans"

    const-string v12, "WIDE"

    const-string v13, "Palatino"

    const-string v14, "Helvetica Neue WGL"

    const-string v15, "GREEN"

    const-string v16, "STBShusong"

    const-string v17, "TBMincho"

    const-string v18, "Baskerville"

    const-string v19, "PMN Caecilia LT"

    const-string v20, "MYing Hei S"

    const-string v21, "TBGothic"

    const-string v22, "CN_AMZN_SITE"

    const-string v23, "CN_WANDOUJIA"

    const-string/jumbo v24, "publisherfont"

    const-string v25, "CN_XIAOMI"

    const-string v26, "CN_360"

    const-string v27, "CN_BAIDU"

    const-string v28, "WIFI"

    const-string v29, "PURPLE_AND_GOLD"

    const-string v30, "mobile"

    const-string v31, "CN_ANZHI"

    const-string v32, "CN_APPCHINA"

    const-string v33, "CN_QQMYAPP"

    const-string v34, "CN_HUAWEI"

    const-string v35, "None"

    const-string v36, "TERMINAL"

    const-string v37, "en"

    const-string v38, "USA"

    const-string v39, "en_us"

    const-string v40, "CHRISTMAS"

    const-string v41, "TIME_TO_READ_CHAPTER"

    const-string v42, "VALENTINES"

    const-string v43, "GRID"

    const-string v44, "STKaiti"

    const-string v45, "CN_DUMMY"

    const-string v46, "SORT_TYPE_RECENT"

    const-string v47, "DEFAULT"

    const-string/jumbo v48, "zh"

    const-string v49, "CN_3G"

    const-string v50, "CN_GFAN"

    const-string v51, "MOBILE"

    const-string v52, "CN_EOEMARKET"

    const-string v53, "ILLINOIS"

    const-string v54, "CN_MUMAYI"

    const-string/jumbo v55, "zh_cn"

    const-string v56, "Caecilia Regular"

    const-string v57, "BLANK"

    const-string v58, "NEBRASKA"

    const-string v59, "LIST"

    const-string v60, "NIGHT"

    const-string v61, "LOCATION"

    const-string v62, "en-en-US"

    const-string v63, "UMD"

    const-string v64, "CN_ONDA_PRELOAD"

    const-string v65, "Helvetica Neue Regular"

    const-string v66, "en_gb"

    const-string/jumbo v67, "zh-zh-CN"

    const-string v68, "Helvetica Neue Light"

    const-string v69, "TIME_TO_READ_BOOK"

    const-string v70, "en-en-UK"

    const-string v71, "de"

    const-string v72, "ko"

    const-string v73, "SORT_TYPE_AUTHOR"

    const-string v74, "it"

    const-string v75, "HALLOWEEN"

    const-string v76, "SORT_TYPE_CUSTOM"

    const-string v77, "SORT_TYPE_TITLE"

    .line 178
    filled-new-array/range {v3 .. v77}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Highlight"

    const-string v2, "Note"

    const-string v3, "Text"

    .line 255
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "spanType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV8;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
