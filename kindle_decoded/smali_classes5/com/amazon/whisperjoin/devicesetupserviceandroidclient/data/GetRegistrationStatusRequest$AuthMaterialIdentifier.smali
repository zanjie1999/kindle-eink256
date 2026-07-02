.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$AuthMaterialIdentifier;
.super Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;
.source "GetRegistrationStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthMaterialIdentifier"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setAuthMaterialIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;->setProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier$Builder;)V

    return-void
.end method
