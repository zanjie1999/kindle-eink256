.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;
.super Ljava/lang/Object;
.source "BarcodeIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;)V

    return-object v0
.end method

.method public setBarcodeData(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier$Builder;->mBarcodeData:Ljava/lang/String;

    return-object p0
.end method
