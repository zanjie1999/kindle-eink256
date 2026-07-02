.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest$LegacyIdentifierData;
.super Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
.source "GetRegistrationStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegacyIdentifierData"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;-><init>()V

    .line 17
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDsn(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->setDeviceType(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;)V

    return-void
.end method
