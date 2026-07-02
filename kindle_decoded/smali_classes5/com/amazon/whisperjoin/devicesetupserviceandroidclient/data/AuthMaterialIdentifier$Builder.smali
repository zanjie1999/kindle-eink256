.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;
.super Ljava/lang/Object;
.source "AuthMaterialIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAuthMaterialIndex:Ljava/lang/String;

.field private mProductIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->validate()V

    .line 72
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;)V

    return-object v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    return-object p0
.end method

.method public setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method protected validate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mAuthMaterialIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateAuthMaterialIndex(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->mProductIndex:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateProductIndex(Ljava/lang/String;)V

    return-void
.end method
