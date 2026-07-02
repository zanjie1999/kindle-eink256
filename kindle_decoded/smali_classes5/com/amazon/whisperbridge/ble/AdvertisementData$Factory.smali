.class public Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;
.super Ljava/lang/Object;
.source "AdvertisementData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/AdvertisementData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private mAdvertisedSdkVersionIndex:I

.field private mAdvertisementVersion:B

.field private mClientNonce:Ljava/lang/String;

.field private mData:[B

.field private mDeviceIdentity:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceNameType:I

.field private mDistressCode:B

.field private mProductIndex:Ljava/lang/String;

.field private mSoftwareVersion:Ljava/lang/String;

.field private mSupportedAuthenticatedEcdhe:Z

.field private mSupportsPin:Z

.field private mSupportsUnauthenticatedEcdhe:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceNameType:I

    return p0
.end method

.method static synthetic access$1200(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportsUnauthenticatedEcdhe:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportedAuthenticatedEcdhe:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportsPin:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)B
    .locals 0

    .line 111
    iget-byte p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDistressCode:B

    return p0
.end method

.method static synthetic access$1600(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)I
    .locals 0

    .line 111
    iget p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisedSdkVersionIndex:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)B
    .locals 0

    .line 111
    iget-byte p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisementVersion:B

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)[B
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mData:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceIdentity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mClientNonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSoftwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method private findType(I)Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;
    .locals 1

    .line 211
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->findTypes(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    return-object p1
.end method

.method private findTypes(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 220
    iget-object v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 221
    aget-byte v4, v3, v1

    .line 222
    aget-byte v2, v3, v2

    if-ne v2, p1, :cond_0

    .line 225
    new-instance v5, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    add-int/lit8 v6, v1, 0x2

    add-int/lit8 v7, v4, -0x1

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;-><init>(B[BII)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findWhisperJoinData(Ljava/util/ArrayList;)Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;",
            ">;)",
            "Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    .line 240
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    .line 243
    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 245
    aget-byte v4, v2, v3

    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$200()[B

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    aget-byte v2, v2, v6

    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$200()[B

    move-result-object v4

    aget-byte v4, v4, v3

    if-eq v2, v4, :cond_3

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {v1, v6}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v2

    aget-byte v2, v2, v3

    iput-byte v2, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisementVersion:B

    .line 249
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->isWhisperJoinAdvertisement(BI)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method private getHexString([B)Ljava/lang/String;
    .locals 6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 183
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%02X"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUTF8String(Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;I)Ljava/lang/String;
    .locals 1

    .line 207
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object p1

    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$100()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private isWhisperJoinAdvertisement(BI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 259
    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$300()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Unsupported WhisperJoin version(0x%02X) detected."

    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x14

    if-ge p2, v2, :cond_1

    .line 263
    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$300()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "WhisperJoin V1 advertisement data too short. Buffer length: %d"

    invoke-static {v2, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 p1, 0x15

    if-ge p2, p1, :cond_2

    .line 267
    invoke-static {}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->access$300()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "WhisperJoin V2 advertisement data too short. Buffer length: %d"

    invoke-static {v2, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public asciiStringFromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 200
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x2

    .line 201
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public create([B)Lcom/amazon/whisperbridge/ble/AdvertisementData;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mData:[B

    const/16 p1, 0x16

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->findTypes(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    invoke-direct {p0, v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->findWhisperJoinData(Ljava/util/ArrayList;)Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x9

    .line 139
    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceIdentity:Ljava/lang/String;

    const/4 v3, 0x3

    .line 140
    invoke-virtual {v1, v3}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mClientNonce:Ljava/lang/String;

    const/4 v3, 0x4

    .line 141
    invoke-virtual {v1, v3}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->asciiStringFromHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mProductIndex:Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v4}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSoftwareVersion:Ljava/lang/String;

    const/4 v5, 0x1

    .line 144
    invoke-virtual {v1, v5}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v6

    const/4 v7, 0x0

    .line 145
    aget-byte v8, v6, v7

    and-int/2addr v8, v5

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportsUnauthenticatedEcdhe:Z

    .line 146
    aget-byte v8, v6, v7

    and-int/2addr v8, v4

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportedAuthenticatedEcdhe:Z

    .line 147
    aget-byte v6, v6, v7

    and-int/2addr v3, v6

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mSupportsPin:Z

    .line 150
    iput-byte v7, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDistressCode:B

    .line 151
    iget-byte v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisementVersion:B

    if-ne v3, v5, :cond_5

    .line 152
    invoke-virtual {v1, v5}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object v3

    aget-byte v3, v3, v7

    iput-byte v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDistressCode:B

    .line 156
    :cond_5
    iput v7, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisedSdkVersionIndex:I

    .line 157
    iget-byte v3, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisementVersion:B

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result v3

    if-ge v3, p1, :cond_7

    :cond_6
    iget-byte p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisementVersion:B

    if-ne p1, v5, :cond_8

    .line 158
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result p1

    const/16 v3, 0x17

    if-lt p1, v3, :cond_8

    .line 159
    :cond_7
    invoke-virtual {v1, v4}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->read(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->parseAdvertisedSdkVersionIndex([B)I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mAdvertisedSdkVersionIndex:I

    .line 163
    :cond_8
    invoke-direct {p0, v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->findType(I)Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 165
    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->getUTF8String(Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceName:Ljava/lang/String;

    .line 166
    iput v2, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceNameType:I

    .line 167
    new-instance p1, Lcom/amazon/whisperbridge/ble/AdvertisementData;

    invoke-direct {p1, p0, v0}, Lcom/amazon/whisperbridge/ble/AdvertisementData;-><init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;Lcom/amazon/whisperbridge/ble/AdvertisementData$1;)V

    return-object p1

    :cond_9
    const/16 p1, 0x8

    .line 169
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->findType(I)Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 171
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;->getLength()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->getUTF8String(Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceName:Ljava/lang/String;

    .line 172
    iput p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceNameType:I

    .line 173
    new-instance p1, Lcom/amazon/whisperbridge/ble/AdvertisementData;

    invoke-direct {p1, p0, v0}, Lcom/amazon/whisperbridge/ble/AdvertisementData;-><init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;Lcom/amazon/whisperbridge/ble/AdvertisementData$1;)V

    return-object p1

    :cond_a
    const-string p1, ""

    .line 175
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 176
    iput p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->mDeviceNameType:I

    .line 177
    new-instance p1, Lcom/amazon/whisperbridge/ble/AdvertisementData;

    invoke-direct {p1, p0, v0}, Lcom/amazon/whisperbridge/ble/AdvertisementData;-><init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;Lcom/amazon/whisperbridge/ble/AdvertisementData$1;)V

    return-object p1
.end method

.method public parseAdvertisedSdkVersionIndex([B)I
    .locals 3

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 192
    :cond_0
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method
