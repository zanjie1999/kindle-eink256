.class public final Lcom/amazon/whispersync/dcp/ota/OTAConstants;
.super Ljava/lang/Object;
.source "OTAConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/OTAConstants$UpdateError;
    }
.end annotation


# static fields
.field public static final ACTION_AMAZON_PACKAGE_MANAGER_INTENT:Ljava/lang/String; = "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageManager"

.field public static final ACTION_DO_UPDATE:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.DO_UPDATES"

.field public static final ACTION_OTA_CONTROLLER:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.CONTROLLER"

.field public static final ACTION_OTA_DOWNLOAD_OBSERVER:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.DOWNLOAD_OBSERVER"

.field public static final ACTION_OTA_INSTALLED:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.OTA_INSTALLED"

.field public static final ACTION_OTA_INSTALL_ERROR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.OTA_INSTALL_ERROR"

.field public static final ACTION_OTA_MONITOR_APP_STATE:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.MONITOR_APP_STATE"

.field public static final ACTION_OTA_READY_TO_INSTALL:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.OTA_READY_TO_INSTALL"

.field public static final ACTION_OTA_UPDATE_INSTALLABLE:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.OTA_UPDATE_INSTALLABLE"

.field public static final ACTION_PROCESS_UPDATES:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.PROCESS_UPDATES"

.field public static final ACTION_UPDATES_STATE_CHANGED:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.UPDATE_STATE_CHANGED"

.field public static final ACTION_UPDATE_ERROR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.action.UPDATE_ERROR"

.field public static final EXTRA_OTA_APPS_TO_KILL:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.APPS_TO_KILL"

.field public static final EXTRA_OTA_INSTALLABLE_MANIFEST_ID:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.OTA_INSTALLABLE_MANIFEST_ID"

.field public static final EXTRA_OTA_INSTALLED:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.OTA_INSTALLED_PACKAGE"

.field public static final EXTRA_OTA_INSTALL_ERROR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.OTA_INSTALL_ERROR_CODE"

.field public static final EXTRA_UPDATES_FOUND:Ljava/lang/String; = "com.amazon.ota.UPDATES_FOUND"

.field public static final EXTRA_UPDATE_ERROR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.UPDATE_ERROR_CODE"

.field public static final LOG_TAG:Ljava/lang/String; = "OTA"

.field public static final OTA_STARTUP_LOGIC_PERFORMED_INTENT:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.startup_logic_performed_intent"

.field public static final OTA_STATUS_PRODUCTION_AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.otastatusprovider"

.field public static final OTA_STATUS_PRODUCTION_AUTHORITY_LIMIT_PARAM:Ljava/lang/String; = "limit"

.field public static final PERMISSION_MONITOR_OTA_UPDATES:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.permission.MONITOR_OTA_UPDATES"

.field public static final PERMISSION_OTA_CONTROLLER:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.permission.CONTROLLER"

.field public static final SHARED_PREFERENCE_INVENTORY_NAME:Ljava/lang/String; = "inventory_upload"

.field public static final SHARED_PREFERENCE_KEY_INVENTORY_HEX:Ljava/lang/String; = "ota.inventory.id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
