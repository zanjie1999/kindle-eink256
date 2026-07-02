.class public final Lcom/audible/hushpuppy/service/settings/HushpuppySettings;
.super Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;
.source "HushpuppySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/settings/HushpuppySettings;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "name_values"

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "name"

    const-string v4, "value"

    const-string v5, "last_update_millis"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/service/settings/AbstractSqlValues;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
