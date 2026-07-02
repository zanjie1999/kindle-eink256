.class public Lcom/amazon/device/sync/platform/ThirdPartyWhispersyncConfig;
.super Ljava/lang/Object;
.source "ThirdPartyWhispersyncConfig.java"

# interfaces
.implements Lcom/amazon/device/sync/platform/WhispersyncConfig;


# instance fields
.field private final mIsEngBuild:Z

.field private final mNetworkOperationsThreadPoolSize:I


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/DeviceInfo;)V
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 13
    iput v0, p0, Lcom/amazon/device/sync/platform/ThirdPartyWhispersyncConfig;->mNetworkOperationsThreadPoolSize:I

    .line 21
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    move-result-object p1

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;->Eng:Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/device/sync/platform/ThirdPartyWhispersyncConfig;->mIsEngBuild:Z

    return-void
.end method


# virtual methods
.method public getIsBatchingDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkOperationsThreadPoolSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getPushNotificationTopic()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Push notifications are disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPushSubscription(Ljava/lang/String;)Lcom/amazon/whispersync/Subscription;
    .locals 1

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Push notifications are disabled"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Push notifications are disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEngineeringBuild()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/amazon/device/sync/platform/ThirdPartyWhispersyncConfig;->mIsEngBuild:Z

    return v0
.end method

.method public supportsPushNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
