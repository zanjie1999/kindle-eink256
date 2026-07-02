.class Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;
.super Ljava/lang/Object;
.source "AdvertisementData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/AdvertisementData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BleData"
.end annotation


# instance fields
.field private final mData:Ljava/io/ByteArrayInputStream;

.field private final mLength:I

.field private final mType:B


# direct methods
.method public constructor <init>(B[BII)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    if-ltz p3, :cond_2

    if-lez p4, :cond_1

    add-int v0, p3, p4

    .line 90
    array-length v1, p2

    if-gt v0, v1, :cond_0

    .line 94
    iput-byte p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->mType:B

    .line 95
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2, p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->mData:Ljava/io/ByteArrayInputStream;

    .line 96
    iput p4, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->mLength:I

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "< buffer.length"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->mLength:I

    return v0
.end method

.method public read(I)[B
    .locals 3

    .line 102
    new-array v0, p1, [B

    .line 103
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->mData:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    return-object v0
.end method
