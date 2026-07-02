.class public Lcom/amazon/whisperbridge/ble/AdvertisementData;
.super Ljava/lang/Object;
.source "AdvertisementData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;,
        Lcom/amazon/whisperbridge/ble/AdvertisementData$BleData;
    }
.end annotation


# static fields
.field private static final ADVERTISED_SDK_VERSION_INDEX_LENGTH:I = 0x2

.field private static final CAPABILITY_INDEX_VERSION_LENGTH:I = 0x2

.field private static final CLIENT_NONCE_LENGTH:I = 0x3

.field private static final DEVICE_IDENTITY_LENGTH:I = 0x9

.field private static final DISTRESS_CODE_LENGTH:I = 0x1

.field private static final PRODUCT_INDEX_LENGTH:I = 0x4

.field private static final SERVICE_DATA_TYPE_IDENTIFIER:B = 0x16t

.field private static final SETUP_FLAGS_BYTE_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperbridge.ble.AdvertisementData"

.field private static final UTF_8_CHARSET:Ljava/nio/charset/Charset;

.field private static final UTF_8_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final WJV2_16BIT_UUID:[B

.field private static final WJ_ADVERTISEMENT_MAXIMUM_SUPPORTED_VERSION:I = 0x1

.field private static final WJ_ADVERTISEMENT_V1_MIN_DATA_LENGTH:I = 0x14

.field private static final WJ_ADVERTISEMENT_V1_MIN_DATA_LENGTH_WITH_SDK_VERSION_INDEX:I = 0x16

.field private static final WJ_ADVERTISEMENT_V2_MIN_DATA_LENGTH:I = 0x15

.field private static final WJ_ADVERTISEMENT_V2_MIN_DATA_LENGTH_WITH_SDK_VERSION_INDEX:I = 0x17

.field private static final WJ_MIN_SERVICE_DATA_LENGTH:I = 0x3


# instance fields
.field private final mAdvertisedSdkVersionIndex:I

.field private final mAdvertisementVersion:B

.field private final mClientNonce:Ljava/lang/String;

.field private final mData:[B

.field private final mDeviceIdentity:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mDeviceNameType:I

.field private final mDistressCode:B

.field private final mProductIndex:Ljava/lang/String;

.field private final mSoftwareVersion:Ljava/lang/String;

.field private final mSupportedAuthenticatedEcdhe:Z

.field private final mSupportsPin:Z

.field private final mSupportsUnauthenticatedEcdhe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->UTF_8_CHARSET:Ljava/nio/charset/Charset;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 73
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->WJV2_16BIT_UUID:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x2t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$400(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)B

    move-result v0

    iput-byte v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mAdvertisementVersion:B

    .line 277
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$500(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mData:[B

    .line 278
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$600(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceIdentity:Ljava/lang/String;

    .line 279
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$700(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mClientNonce:Ljava/lang/String;

    .line 280
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$800(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mProductIndex:Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$900(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSoftwareVersion:Ljava/lang/String;

    .line 282
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1000(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceName:Ljava/lang/String;

    .line 283
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1100(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceNameType:I

    .line 284
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1200(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportsUnauthenticatedEcdhe:Z

    .line 285
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1300(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportedAuthenticatedEcdhe:Z

    .line 286
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1400(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportsPin:Z

    .line 287
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1500(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)B

    move-result v0

    iput-byte v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDistressCode:B

    .line 288
    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->access$1600(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mAdvertisedSdkVersionIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;Lcom/amazon/whisperbridge/ble/AdvertisementData$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;-><init>(Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)V

    return-void
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->UTF_8_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[B
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->WJV2_16BIT_UUID:[B

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAdvertisedSdkVersionIndex()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mAdvertisedSdkVersionIndex:I

    return v0
.end method

.method public getAdvertisementVersion()B
    .locals 1

    .line 292
    iget-byte v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mAdvertisementVersion:B

    return v0
.end method

.method public getClientNonce()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mClientNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdentity()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistressCode()B
    .locals 1

    .line 332
    iget-byte v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDistressCode:B

    return v0
.end method

.method public getNameType()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mDeviceNameType:I

    return v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mProductIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsAuthenticatedEcdhe()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportedAuthenticatedEcdhe:Z

    return v0
.end method

.method public getSupportsPin()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportsPin:Z

    return v0
.end method

.method public getSupportsUnauthenticatedEcdhe()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ble/AdvertisementData;->mSupportsUnauthenticatedEcdhe:Z

    return v0
.end method
