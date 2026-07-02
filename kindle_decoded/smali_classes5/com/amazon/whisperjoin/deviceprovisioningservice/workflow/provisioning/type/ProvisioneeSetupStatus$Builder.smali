.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
.super Ljava/lang/Object;
.source "ProvisioneeSetupStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

.field private mErrorCode:Ljava/lang/String;

.field private mLastUpdatedTime:Ljava/lang/String;

.field private mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

.field private mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

.field private mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

.field private mProvisioningMethod:Ljava/lang/String;

.field private mProvisioningState:Ljava/lang/String;

.field private mProvisioningStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mLastUpdatedTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningState:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningStatus:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;
    .locals 2

    .line 225
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$1;)V

    return-object v0
.end method

.method public setAuthMaterialIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    return-object p0
.end method

.method public setErrorCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public setLastUpdatedTime(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mLastUpdatedTime:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioneeAuthMaterialIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    return-object p0
.end method

.method public setProvisioneeBarcodeIdentifier(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    return-object p0
.end method

.method public setProvisionerInformation(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    return-object p0
.end method

.method public setProvisioningMethod(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningState(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningState:Ljava/lang/String;

    return-object p0
.end method

.method public setProvisioningStatus(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->mProvisioningStatus:Ljava/lang/String;

    return-object p0
.end method
