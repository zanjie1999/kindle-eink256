.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;
.super Ljava/lang/Object;
.source "BarcodeIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBarcodeData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    return-object p0
.end method

.method private validate()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/RequestInputValidator;->validateBarcodeData(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->validate()V

    .line 61
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;)V

    return-object v0
.end method

.method public setBarcodeData(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    return-object p0
.end method
