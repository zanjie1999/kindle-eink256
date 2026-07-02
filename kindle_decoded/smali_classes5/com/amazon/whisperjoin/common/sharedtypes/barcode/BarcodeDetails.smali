.class public Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;
.super Ljava/lang/Object;
.source "BarcodeDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BARCODE_PARSER:Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeParser;

.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAmazonBarcodeVersion:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mProductId:Ljava/lang/String;

.field private final mPublicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/RegexBarcodeParser;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/RegexBarcodeParser;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->BARCODE_PARSER:Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeParser;

    .line 112
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 82
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;

    .line 84
    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    .line 85
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    .line 86
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    .line 87
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 71
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    const-string v2, "mAmazonBarcodeVersion"

    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    const-string v2, "mProductId"

    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    const-string v2, "mPublicKey"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    const-string v2, "mPin"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 76
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mAmazonBarcodeVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPublicKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeDetails;->mPin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parcel cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
