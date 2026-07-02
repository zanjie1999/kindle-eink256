.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;
.super Ljava/lang/Object;
.source "DiscoveredLocalNotificationProvisioneeResponse.java"


# instance fields
.field private final mCanProceed:Z

.field private final mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;


# direct methods
.method public constructor <init>(ZLcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mCanProceed:Z

    .line 12
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    return-void
.end method


# virtual methods
.method public canProceed()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mCanProceed:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 28
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    .line 32
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mCanProceed:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mCanProceed:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    .line 33
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLegacyIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mCanProceed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;->mLegacyIdentifierData:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
