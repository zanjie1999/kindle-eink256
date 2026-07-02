.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;
.super Ljava/lang/Object;
.source "StartEcdheAuthenticationSessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuthMaterialIndex:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;

.field private mProductIndex:Ljava/lang/String;

.field private mSoftwareVersionIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validate()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mProductIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProductIndex(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateSoftwareVersionIndex(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAuthMaterialIndex(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mNonce:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAdvertisementNonce(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;
    .locals 7

    .line 108
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->validate()V

    .line 109
    new-instance v6, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mProductIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mNonce:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$1;)V

    return-object v6
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/StartEcdheAuthenticationSessionRequest$Builder;->mSoftwareVersionIndex:Ljava/lang/String;

    return-object p0
.end method
