.class public final enum Lcom/amazon/kcp/application/IAppSettingsController$Setting;
.super Ljava/lang/Enum;
.source "IAppSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/IAppSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/IAppSettingsController$Setting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum APP_UPGRADED_TO_RUBY_VERSION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum CRASH_BIT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DCP_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum DEVICE_OS_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum DISABLE_FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum FILTER_REVAMP_TUTORIAL_SHOWN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum FRESH_APP_INSTALL:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum FRESH_MOP_DEPRECATION_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum HAS_MIGRATED_DOCUMENTS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum HAS_MIGRATED_DOCUMENT_SIZE:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum INSTALLED_WITH_SERIES_GROUPING_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum IS_YJ_SUPPORTED_BY_BLACKLIST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum IS_YJ_SUPPORTED_BY_SNIFFTEST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD_IN_DAYS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum KFC_APK_FILE_DOWNLOAD_COMPLETED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LAST_APP_ANR_DETECTION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LAST_APP_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LAST_READ_RENDER_ELEMENT_HEIGHT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LAST_READ_RENDER_ELEMENT_WIDTH:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LIBRARY_FILTER:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LIBRARY_NAVIGATION_DRAWER_DEMO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LIBRARY_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum LIBRARY_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum PREVIOUS_ANDROID_SDK_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum PREVIOUS_UPDATE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum REDDING_USER_CONTENT_MIGRATED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum SHOW_CAROUSEL_INSTRUCTIONS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum SILENT_UPDATES_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum SUBPIXEL_RENDERING:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

.field public static final enum TOP_SEARCH_DOWNLOAD_RETRY_NEEDED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 363
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v1, 0x0

    const-string v2, "LAST_READ_RENDER_ELEMENT_WIDTH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_WIDTH:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 364
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v2, 0x1

    const-string v3, "LAST_READ_RENDER_ELEMENT_HEIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_HEIGHT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 365
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v3, 0x2

    const-string v4, "READER_FONT_TOAST_VIEWS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 366
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v4, 0x3

    const-string v5, "LIBRARY_UPGRADE_VERSION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 367
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v5, 0x4

    const-string v6, "LAST_APP_UPGRADE_VERSION"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 368
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v6, 0x5

    const-string v7, "APP_UPGRADED_TO_RUBY_VERSION_TIME"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->APP_UPGRADED_TO_RUBY_VERSION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 369
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v7, 0x6

    const-string v8, "PREVIOUS_UPDATE_VERSION"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_UPDATE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 370
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/4 v8, 0x7

    const-string v9, "FRESH_APP_INSTALL"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_APP_INSTALL:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 371
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v9, 0x8

    const-string v10, "MIN_SOFTWARE_VERSION"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 372
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v10, 0x9

    const-string v11, "CRASH_BIT"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->CRASH_BIT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 374
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v11, 0xa

    const-string v12, "LAUNCH_TO"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 375
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v12, 0xb

    const-string v13, "LIBRARY_FILTER"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_FILTER:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 376
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v13, 0xc

    const-string v14, "SUBPIXEL_RENDERING"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SUBPIXEL_RENDERING:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 377
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0xd

    const-string v15, "SHOW_CAROUSEL_INSTRUCTIONS"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SHOW_CAROUSEL_INSTRUCTIONS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 378
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v15, 0xe

    const-string v14, "REDDING_USER_CONTENT_MIGRATED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->REDDING_USER_CONTENT_MIGRATED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 379
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0xf

    const-string v15, "AUTH_PORTAL_MAPPINGS"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 380
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v15, 0x10

    const-string v14, "DISABLE_FTUE_LOADING_SCREEN"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DISABLE_FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 381
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0x11

    const-string v15, "DCP_SETTINGS"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DCP_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 382
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v15, 0x12

    const-string v14, "DEVICE_OS_VERSION"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DEVICE_OS_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 383
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0x13

    const-string v15, "LIBRARY_NAVIGATION_DRAWER_DEMO"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_NAVIGATION_DRAWER_DEMO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 384
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v15, 0x14

    const-string v14, "IS_YJ_SUPPORTED_BY_BLACKLIST"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_BLACKLIST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 385
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0x15

    const-string v15, "IS_YJ_SUPPORTED_BY_SNIFFTEST"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_SNIFFTEST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 386
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v15, "KFC_APK_FILE_DOWNLOAD_COMPLETED"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->KFC_APK_FILE_DOWNLOAD_COMPLETED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 387
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD_IN_DAYS"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD_IN_DAYS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 388
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "SILENT_UPDATES_ENABLED"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SILENT_UPDATES_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 389
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "LAST_APP_ANR_DETECTION_TIME"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_ANR_DETECTION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 390
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "INSTALLED_WITH_SERIES_GROUPING_ENABLED"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->INSTALLED_WITH_SERIES_GROUPING_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 391
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "LIBRARY_ONE_TIME_SORT_FIX_APPLIED"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 392
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 393
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "FILTER_REVAMP_TUTORIAL_SHOWN"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FILTER_REVAMP_TUTORIAL_SHOWN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 394
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "TOP_SEARCH_DOWNLOAD_RETRY_NEEDED"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->TOP_SEARCH_DOWNLOAD_RETRY_NEEDED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 395
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "HAS_MIGRATED_DOCUMENT_SIZE"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENT_SIZE:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 396
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "HAS_MIGRATED_DOCUMENTS"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENTS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 397
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 398
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "FRESH_MOP_DEPRECATION_ENABLED"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_MOP_DEPRECATION_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 399
    new-instance v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const-string v14, "PREVIOUS_ANDROID_SDK_VERSION"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_ANDROID_SDK_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v14, 0x24

    new-array v14, v14, [Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 362
    sget-object v15, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_WIDTH:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_HEIGHT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->APP_UPGRADED_TO_RUBY_VERSION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_UPDATE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_APP_INSTALL:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->CRASH_BIT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_FILTER:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SUBPIXEL_RENDERING:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SHOW_CAROUSEL_INSTRUCTIONS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->REDDING_USER_CONTENT_MIGRATED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DISABLE_FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DCP_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DEVICE_OS_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_NAVIGATION_DRAWER_DEMO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_BLACKLIST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_SNIFFTEST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->KFC_APK_FILE_DOWNLOAD_COMPLETED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD_IN_DAYS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SILENT_UPDATES_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_ANR_DETECTION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->INSTALLED_WITH_SERIES_GROUPING_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FILTER_REVAMP_TUTORIAL_SHOWN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->TOP_SEARCH_DOWNLOAD_RETRY_NEEDED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENT_SIZE:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENTS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_MOP_DEPRECATION_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    const/16 v1, 0x23

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->$VALUES:[Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/IAppSettingsController$Setting;
    .locals 1

    .line 362
    const-class v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/IAppSettingsController$Setting;
    .locals 1

    .line 362
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->$VALUES:[Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/IAppSettingsController$Setting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 1

    .line 402
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
