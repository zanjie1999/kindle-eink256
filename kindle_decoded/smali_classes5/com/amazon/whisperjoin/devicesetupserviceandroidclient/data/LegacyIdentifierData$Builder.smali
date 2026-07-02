.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;
.super Ljava/lang/Object;
.source "LegacyIdentifierData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceType:Ljava/lang/String;

.field private mDsn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->mDsn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;
    .locals 1

    .line 67
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;)V

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method public setDsn(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/LegacyIdentifierData$Builder;->mDsn:Ljava/lang/String;

    return-object p0
.end method
