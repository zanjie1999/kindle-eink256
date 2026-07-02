.class public Lcom/amazon/whispersync/communication/CommonConnectionPolicies;
.super Ljava/lang/Object;
.source "CommonConnectionPolicies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnectionPolicyFastBidirectional(Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;)Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 81
    :try_start_0
    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 88
    new-instance v0, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static createConnectionPolicyFrequentFireAndForget(Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;)Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static createConnectionPolicyOccasionalFireAndForget(Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;)Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 133
    new-instance v0, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static createConnectionPolicyOneShotRequest(Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;)Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 35
    :try_start_0
    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static createConnectionPolicySharedBidirectional(Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;)Lamazon/whispersync/communication/connection/ConnectionPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/ConnectionPolicyException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 59
    :try_start_0
    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRoamingAllowed(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsShortLived(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0, v1}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;

    move-result-object p0

    invoke-interface {p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyBuilder;->build()Lamazon/whispersync/communication/connection/ConnectionPolicy;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    new-instance v0, Lamazon/whispersync/communication/connection/ConnectionPolicyException;

    invoke-direct {v0, p0}, Lamazon/whispersync/communication/connection/ConnectionPolicyException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
