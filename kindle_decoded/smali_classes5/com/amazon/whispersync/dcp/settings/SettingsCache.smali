.class public Lcom/amazon/whispersync/dcp/settings/SettingsCache;
.super Ljava/lang/Object;
.source "SettingsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

.field private static final NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final STRING_LIST_DELIMITER:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

.field private mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ","

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->STRING_LIST_DELIMITER:Ljava/util/regex/Pattern;

    .line 42
    const-class v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->clear()V

    return-void
.end method

.method private static dcpReadPermissionIsValid(Landroid/content/Context;)Z
    .locals 1

    .line 336
    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SignatureHelper;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SignatureHelper;-><init>(Landroid/content/Context;)V

    const-string p0, "com.amazon.whispersync.dcp.settings.permission.READ_SETTINGS"

    .line 337
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/dcp/framework/SignatureHelper;->shouldTrustPermissionOwner(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 341
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Permission to read device settings doesn\'t exist. This is normal on third-party devices."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static enforceReadPermission(Landroid/content/Context;)V
    .locals 3

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.whispersync.dcp.settings.permission.READ_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not have the permission to read device settings"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceSetContext(Landroid/content/Context;)V
    .locals 2

    .line 96
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->forceSetContextImpl(Landroid/content/Context;)V

    return-void
.end method

.method private forceSetContextImpl(Landroid/content/Context;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object p1, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Attempted to set context on SettingsCache more than once."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->clear()V

    .line 116
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    .line 117
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;->init()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;
    .locals 1

    .line 60
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 71
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->dcpReadPermissionIsValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->enforceReadPermission(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->forceSetContext(Landroid/content/Context;)V

    return-void

    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    sget-object p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Always use default values for settings"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static waitForInitialSync()V
    .locals 1

    .line 128
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->waitForInitialSyncImpl()V

    return-void
.end method

.method private waitForInitialSyncImpl()V
    .locals 2

    .line 133
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call SettingsCache.setContext before using SettingsCache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_3

    .line 146
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;->waitForInitialSync()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->addListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V

    return-void
.end method

.method clear()V
    .locals 1

    .line 310
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    .line 312
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 316
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    return-void
.end method

.method public getBooleanValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p3

    :cond_0
    const-string/jumbo v0, "true"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "false"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 252
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "%s=\'%s\' won\'t parse as boolean. Using default value (%s) instead."

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    .line 230
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getBooleanValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)I
    .locals 4

    int-to-long v0, p3

    .line 211
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getLongValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    return p1

    .line 215
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p2

    const/4 p2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p2

    const-string p2, "%s=%d is too big for SettingInteger. Using default value (%d) instead."

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1

    .line 206
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getIntValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)J
    .locals 3

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p3

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 195
    :catch_0
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s=\'%s\' won\'t parse as long. Using default value (%d) instead."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .locals 1

    .line 177
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getLongValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSettings(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->waitForInitialSync()V

    .line 284
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->getMap()Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->getNamespace(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getStringListValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 271
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 276
    :cond_1
    sget-object p2, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->STRING_LIST_DELIMITER:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->waitForInitialSync()V

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->getMap()Lcom/amazon/whispersync/dcp/settings/SettingsMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsMap;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->Default:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->removeListener(Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;)V

    return-void
.end method

.method setValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->setValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method unsetValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCacheUpdater;->unsetValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;)V

    return-void
.end method

.method public waitForPendingSync()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/BackgroundSynchronizer;->waitForPendingSync()V

    :cond_0
    return-void
.end method
