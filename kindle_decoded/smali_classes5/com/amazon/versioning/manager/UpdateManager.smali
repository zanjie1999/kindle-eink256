.class public Lcom/amazon/versioning/manager/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static final contentLock:Ljava/lang/Object;

.field private static final settingLock:Ljava/lang/Object;

.field private static updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

.field private static updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/versioning/manager/UpdateManager;->settingLock:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/versioning/manager/UpdateManager;->contentLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUpdateSettingProvider()Lcom/amazon/versioning/provider/UpdateSettingProvider;
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->settingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/amazon/versioning/manager/UpdateManager;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-direct {v1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;-><init>()V

    sput-object v1, Lcom/amazon/versioning/manager/UpdateManager;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    return-object v0
.end method

.method public getUpdatedContentItemProvider()Lcom/amazon/versioning/provider/UpdatedContentItemProvider;
    .locals 2

    .line 37
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->contentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/amazon/versioning/manager/UpdateManager;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-direct {v1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;-><init>()V

    sput-object v1, Lcom/amazon/versioning/manager/UpdateManager;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/versioning/manager/UpdateManager;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    return-object v0
.end method
