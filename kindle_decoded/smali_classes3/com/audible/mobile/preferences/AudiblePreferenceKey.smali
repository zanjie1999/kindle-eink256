.class public final enum Lcom/audible/mobile/preferences/AudiblePreferenceKey;
.super Ljava/lang/Enum;
.source "AudiblePreferenceKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum ADP_TOKEN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum AUDIO_FILE_PATH_LIST:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum AUDIO_FOCUS_DUCKING:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum CHOSEN_COUNTRY_CODE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum DEVICE_ID:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum DEVICE_PRIVATE_KEY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum DOWNLOAD_FOLDER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum DOWNLOAD_SIDECAR_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum HAS_LIBRARY_REFRESH_COMPLETED_AFTER_GLOBAL_LIBRARY_MIGRATION:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum HAS_LIBRARY_REFRESH_STARTED_AFTER_GLOBAL_LIBRARY_MIGRATION:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LAST_PLAYED_FILE_PATH:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_BOTTOM_PANEL_STATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_DB_LAST_UPDATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_FULLY_REFRESHED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_MEDIA_TYPE_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_REFRESH_FAILED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum LIBRARY_SORT_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum NEED_CLEAR_CACHE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum TEMPO:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum UPLOAD_BOOKMARKS_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum USERNAME:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum USE_SINGLE_PART_LIBRARY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

.field public static final enum WHISPERSYNC_ENABLED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;


# instance fields
.field private final preferencesKeyString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v1, 0x0

    const-string v2, "USERNAME"

    const-string v3, "username"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->USERNAME:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 10
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v2, 0x1

    const-string v3, "LAST_PLAYED_FILE_PATH"

    const-string v4, "last.played.file.path"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LAST_PLAYED_FILE_PATH:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 11
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v3, 0x2

    const-string v4, "TEMPO"

    const-string v5, "tempo"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->TEMPO:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 12
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v4, 0x3

    const-string v5, "DEVICE_ID"

    const-string v6, "DeviceId"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DEVICE_ID:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 13
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v5, 0x4

    const-string v6, "LIBRARY_DB_LAST_UPDATE"

    const-string v7, "library_db_last_updated"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_DB_LAST_UPDATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 14
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v6, 0x5

    const-string v7, "WHISPERSYNC_ENABLED"

    const-string v8, "WhisperSyncEnabled"

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->WHISPERSYNC_ENABLED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 15
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v7, 0x6

    const-string v8, "AUDIO_FILE_PATH_LIST"

    const-string v9, "audio_file_path_list"

    invoke-direct {v0, v8, v7, v9}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->AUDIO_FILE_PATH_LIST:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 16
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/4 v8, 0x7

    const-string v9, "CHOSEN_COUNTRY_CODE"

    const-string v10, "chosen_country_code"

    invoke-direct {v0, v9, v8, v10}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->CHOSEN_COUNTRY_CODE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 17
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v9, 0x8

    const-string v10, "NEED_CLEAR_CACHE"

    const-string v11, "needClearCache"

    invoke-direct {v0, v10, v9, v11}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->NEED_CLEAR_CACHE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 18
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v10, 0x9

    const-string v11, "LIBRARY_BOTTOM_PANEL_STATE"

    const-string v12, "library_bottom_panel_state"

    invoke-direct {v0, v11, v10, v12}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_BOTTOM_PANEL_STATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 19
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v11, 0xa

    const-string v12, "LIBRARY_SORT_FILTER"

    const-string v13, "library_sort_filter"

    invoke-direct {v0, v12, v11, v13}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_SORT_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 20
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v12, 0xb

    const-string v13, "LIBRARY_MEDIA_TYPE_FILTER"

    const-string v14, "library_media_type_filter"

    invoke-direct {v0, v13, v12, v14}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_MEDIA_TYPE_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 21
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v13, 0xc

    const-string v14, "DEVICE_PRIVATE_KEY"

    invoke-direct {v0, v14, v13, v14}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DEVICE_PRIVATE_KEY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 22
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v14, 0xd

    const-string v15, "ADP_TOKEN"

    invoke-direct {v0, v15, v14, v15}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->ADP_TOKEN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 23
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v15, 0xe

    const-string v14, "LIBRARY_REFRESH_FAILED"

    const-string v13, "LibraryRefreshFailed"

    invoke-direct {v0, v14, v15, v13}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_REFRESH_FAILED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 24
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v13, 0xf

    const-string v14, "DOWNLOAD_SIDECAR_FIRST_RUN"

    const-string v15, "downloadSidecarFirstRun"

    invoke-direct {v0, v14, v13, v15}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_SIDECAR_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 25
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v14, 0x10

    const-string v15, "UPLOAD_BOOKMARKS_FIRST_RUN"

    const-string v13, "uploadBookmarksFirstRun"

    invoke-direct {v0, v15, v14, v13}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->UPLOAD_BOOKMARKS_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 26
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v13, 0x11

    const-string v15, "LIBRARY_FULLY_REFRESHED"

    const-string v14, "libraryFullyRefreshed"

    invoke-direct {v0, v15, v13, v14}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_FULLY_REFRESHED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 27
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v14, 0x12

    const-string v15, "USE_SINGLE_PART_LIBRARY"

    const-string v13, "use_single_part_library"

    invoke-direct {v0, v15, v14, v13}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->USE_SINGLE_PART_LIBRARY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 28
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v13, 0x13

    const-string v15, "DOWNLOAD_FOLDER"

    const-string v14, "download_folder"

    invoke-direct {v0, v15, v13, v14}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_FOLDER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 29
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const-string v14, "DOWNLOAD_NETWORK_PREFERENCE"

    const/16 v15, 0x14

    const-string v13, "download_network_preference"

    invoke-direct {v0, v14, v15, v13}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 30
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const-string v13, "AUDIO_FOCUS_DUCKING"

    const/16 v14, 0x15

    const-string v15, "audio_focus_ducking"

    invoke-direct {v0, v13, v14, v15}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->AUDIO_FOCUS_DUCKING:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 31
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const-string v13, "HAS_LIBRARY_REFRESH_STARTED_AFTER_GLOBAL_LIBRARY_MIGRATION"

    const/16 v14, 0x16

    const-string v15, "recorded_interaction_agls_refresh_started"

    invoke-direct {v0, v13, v14, v15}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->HAS_LIBRARY_REFRESH_STARTED_AFTER_GLOBAL_LIBRARY_MIGRATION:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 32
    new-instance v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const-string v13, "HAS_LIBRARY_REFRESH_COMPLETED_AFTER_GLOBAL_LIBRARY_MIGRATION"

    const/16 v14, 0x17

    const-string v15, "recorded_interaction_agls_refresh_complete"

    invoke-direct {v0, v13, v14, v15}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->HAS_LIBRARY_REFRESH_COMPLETED_AFTER_GLOBAL_LIBRARY_MIGRATION:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v13, 0x18

    new-array v13, v13, [Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    .line 7
    sget-object v14, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->USERNAME:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v14, v13, v1

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LAST_PLAYED_FILE_PATH:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->TEMPO:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v3

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DEVICE_ID:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v4

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_DB_LAST_UPDATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v5

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->WHISPERSYNC_ENABLED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v6

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->AUDIO_FILE_PATH_LIST:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v7

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->CHOSEN_COUNTRY_CODE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v8

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->NEED_CLEAR_CACHE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v9

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_BOTTOM_PANEL_STATE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v10

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_SORT_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v11

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_MEDIA_TYPE_FILTER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    aput-object v1, v13, v12

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DEVICE_PRIVATE_KEY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->ADP_TOKEN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_REFRESH_FAILED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_SIDECAR_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->UPLOAD_BOOKMARKS_FIRST_RUN:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->LIBRARY_FULLY_REFRESHED:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->USE_SINGLE_PART_LIBRARY:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_FOLDER:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->AUDIO_FOCUS_DUCKING:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->HAS_LIBRARY_REFRESH_STARTED_AFTER_GLOBAL_LIBRARY_MIGRATION:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    const/16 v1, 0x17

    aput-object v0, v13, v1

    sput-object v13, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->$VALUES:[Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->preferencesKeyString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/preferences/AudiblePreferenceKey;
    .locals 1

    .line 7
    const-class v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/preferences/AudiblePreferenceKey;
    .locals 1

    .line 7
    sget-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->$VALUES:[Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-virtual {v0}, [Lcom/audible/mobile/preferences/AudiblePreferenceKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->preferencesKeyString:Ljava/lang/String;

    return-object v0
.end method
