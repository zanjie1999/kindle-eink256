.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
.super Ljava/lang/Object;
.source "ProvisioneeSetupStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

.field private mErrorCode:Ljava/lang/String;

.field private mLastUpdatedTime:Ljava/lang/String;

.field private mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

.field private mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

.field private mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

.field private mProvisioningMethod:Ljava/lang/String;

.field private mProvisioningState:Ljava/lang/String;

.field private mProvisioningStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mLastUpdatedTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningStatus:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;
    .locals 2

    .line 179
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$1;)V

    return-object v0
.end method

.method public setAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public setLastUpdatedTime(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mLastUpdatedTime:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioneeAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    return-object p0
.end method

.method public setProvisioneeBarcodeIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    return-object p0
.end method

.method public setProvisionerInformation(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisionerInformation:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    return-object p0
.end method

.method public setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningState(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningState:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningStatus(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus$Builder;->mProvisioningStatus:Ljava/lang/String;

    return-object p0
.end method
