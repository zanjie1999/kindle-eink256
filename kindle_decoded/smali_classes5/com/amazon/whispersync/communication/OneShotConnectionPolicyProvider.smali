.class public Lcom/amazon/whispersync/communication/OneShotConnectionPolicyProvider;
.super Ljava/lang/Object;
.source "OneShotConnectionPolicyProvider.java"


# instance fields
.field private final mOneShotPolicy:Lamazon/whispersync/communication/connection/ConnectionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/OneShotConnectionPolicyProvider;->getConnectionPolicyBuilder()Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    invoke-interface {v0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object v0

    invoke-interface {v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/OneShotConnectionPolicyProvider;->mOneShotPolicy:Lamazon/whispersync/communication/connection/ConnectionPolicy;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public getConnectionPolicy()Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/communication/OneShotConnectionPolicyProvider;->mOneShotPolicy:Lamazon/whispersync/communication/connection/ConnectionPolicy;

    return-object v0
.end method

.method public getConnectionPolicyBuilder()Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/SimpleConnectionPolicyBuilder;-><init>()V

    return-object v0
.end method
