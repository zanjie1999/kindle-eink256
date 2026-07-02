.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;
.super Ljava/lang/Object;
.source "ProvisioneeSetupStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    }
.end annotation


# instance fields
.field private final mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

.field private final mErrorCode:Ljava/lang/String;

.field private final mLastUpdatedTime:Ljava/lang/String;

.field private final mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

.field private final mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

.field private final mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

.field private final mProvisioningMethod:Ljava/lang/String;

.field private final mProvisioningState:Ljava/lang/String;

.field private final mProvisioningStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    .line 27
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    .line 28
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    .line 29
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    .line 30
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$500(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$600(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$700(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->access$800(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 56
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    .line 60
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    .line 61
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    .line 62
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    .line 63
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    .line 64
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    .line 65
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    .line 66
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    .line 67
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    .line 68
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

.method public getAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeAuthMaterialIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object v0
.end method

.method public getProvisioneeBarcodeIdentifier()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    return-object v0
.end method

.method public getProvisionerInformation()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    return-object v0
.end method

.method public getProvisioningMethod()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningState()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningStatus()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    const-string v2, "mAuthMaterialIdentifier"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    const-string v2, "mProvisionerInformation"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    const-string v2, "mProvisioneeAuthMaterialIdentifier"

    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    const-string v2, "mProvisioneeBarcodeIdentifier"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    const-string v2, "mErrorCode"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    const-string v2, "mLastUpdatedTime"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    const-string v2, "mProvisioningMethod"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    const-string v2, "mProvisioningState"

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    const-string v2, "mProvisioningStatus"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 83
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
