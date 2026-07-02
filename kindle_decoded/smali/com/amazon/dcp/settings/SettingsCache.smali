.class public final Lcom/amazon/dcp/settings/SettingsCache;
.super Ljava/lang/Object;
.source "SettingsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/settings/SettingsCache$IListener;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

.field private static final NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final STRING_LIST_DELIMITER:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSettingsCacheUpdater:Lcom/amazon/dcp/settings/SettingsCacheUpdater;

.field private mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ","

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/dcp/settings/SettingsCache;->STRING_LIST_DELIMITER:Ljava/util/regex/Pattern;

    .line 42
    const-class v0, Lcom/amazon/dcp/settings/SettingsCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/amazon/dcp/settings/SettingsCache;

    invoke-direct {v0}, Lcom/amazon/dcp/settings/SettingsCache;-><init>()V

    sput-object v0, Lcom/amazon/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/amazon/dcp/settings/SettingsCache;->clear()V

    return-void
.end method

.method private static dcpReadPermissionExists(Landroid/content/Context;)Z
    .locals 4

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.amazon.dcp.settings.permission.READ_SETTINGS"

    const/16 v3, 0x80

    .line 333
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 336
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 342
    sget-object p0, Lcom/amazon/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Somebody is trying something sneaky. The package that owns the permission to read device settings does not have the same signature as this application"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return v0

    .line 352
    :catch_0
    sget-object p0, Lcom/amazon/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Permission to read device settings doesn\'t exist. This is normal on third-party devices."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static enforceReadPermission(Landroid/content/Context;)V
    .locals 3

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.settings.permission.READ_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
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

    .line 92
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/dcp/settings/SettingsCache;->forceSetContextImpl(Landroid/content/Context;)V

    return-void
.end method

.method private forceSetContextImpl(Landroid/content/Context;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/amazon/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object p1, Lcom/amazon/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Attempted to set context on SettingsCache more than once."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/dcp/settings/SettingsCache;->clear()V

    .line 112
    :cond_1
    new-instance v0, Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    iget-object v1, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/dcp/settings/SettingsCacheUpdater;

    invoke-direct {v0, v1, p1}, Lcom/amazon/dcp/settings/BackgroundSynchronizer;-><init>(Lcom/amazon/dcp/settings/SettingsCacheUpdater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    .line 113
    invoke-virtual {v0}, Lcom/amazon/dcp/settings/BackgroundSynchronizer;->init()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/dcp/settings/SettingsCache;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 67
    invoke-static {}, Lcom/amazon/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/dcp/settings/SettingsCache;->dcpReadPermissionExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/amazon/dcp/settings/SettingsCache;->enforceReadPermission(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/amazon/dcp/settings/SettingsCache;->forceSetContext(Landroid/content/Context;)V

    return-void

    .line 78
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    sget-object p0, Lcom/amazon/dcp/settings/SettingsCache;->TAG:Ljava/lang/String;

    const-string v0, "Always use default values for settings"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static waitForInitialSync()V
    .locals 1

    .line 124
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

    invoke-direct {v0}, Lcom/amazon/dcp/settings/SettingsCache;->waitForInitialSyncImpl()V

    return-void
.end method

.method private waitForInitialSyncImpl()V
    .locals 2

    .line 129
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->NEVER_SYNC_WITH_PROVIDER:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/amazon/dcp/settings/SettingsCache;->INSTANCE:Lcom/amazon/dcp/settings/SettingsCache;

    iget-object v0, v0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call SettingsCache.setContext before using SettingsCache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v0}, Lcom/amazon/dcp/settings/BackgroundSynchronizer;->waitForInitialSync()V

    :cond_3
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 306
    new-instance v0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;

    invoke-direct {v0}, Lcom/amazon/dcp/settings/SettingsCacheUpdater;-><init>()V

    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/dcp/settings/SettingsCacheUpdater;

    .line 308
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/amazon/dcp/settings/BackgroundSynchronizer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSynchronizer:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    return-void
.end method

.method public getValue(Lcom/amazon/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/dcp/settings/SettingsCache;->waitForInitialSync()V

    .line 168
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCache;->mSettingsCacheUpdater:Lcom/amazon/dcp/settings/SettingsCacheUpdater;

    invoke-virtual {v0}, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->getMap()Lcom/amazon/dcp/settings/SettingsMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/dcp/settings/SettingsMap;->getValue(Lcom/amazon/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
