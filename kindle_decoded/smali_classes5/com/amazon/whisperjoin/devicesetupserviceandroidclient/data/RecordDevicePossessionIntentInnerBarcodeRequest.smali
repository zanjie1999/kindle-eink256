.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;
.super Ljava/lang/Object;
.source "RecordDevicePossessionIntentInnerBarcodeRequest.java"


# instance fields
.field private mBarcodeData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 37
    const-class v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;

    .line 41
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBarcodeData()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBarcodeData(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RecordDevicePossessionIntentInnerBarcodeRequest;->mBarcodeData:Ljava/lang/String;

    const-string v2, "barcodeData"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 29
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
