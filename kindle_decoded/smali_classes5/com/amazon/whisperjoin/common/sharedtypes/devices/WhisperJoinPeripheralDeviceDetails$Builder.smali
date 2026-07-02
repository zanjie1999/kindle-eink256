.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
.super Ljava/lang/Object;
.source "WhisperJoinPeripheralDeviceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdvertisedSdkVersionIndex:I

.field private mClientNonce:Ljava/lang/String;

.field private mDeviceIdentity:Ljava/lang/String;

.field private mDiscoveredRadios:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendlyName:Ljava/lang/String;

.field private mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

.field private mProductIndex:Ljava/lang/String;

.field private mSoftwareVersion:Ljava/lang/String;

.field private mSupportedAuthenciatedEcdhe:Z

.field private mSupportsPin:Z

.field private mSupportsUnauthenciatedEcdhe:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDiscoveredRadios:Ljava/util/Set;

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mProductIndex:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDeviceIdentity:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mFriendlyName:Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    iput-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    .line 93
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSoftwareVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mAdvertisedSdkVersionIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/util/Set;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDiscoveredRadios:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mAdvertisedSdkVersionIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDeviceIdentity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mClientNonce:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSoftwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportsUnauthenciatedEcdhe:Z

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportedAuthenciatedEcdhe:Z

    return p0
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportsPin:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 1

    .line 228
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;)V

    return-object v0
.end method

.method public withAdvertisedSdkVersionIndex(I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 0

    .line 223
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mAdvertisedSdkVersionIndex:I

    return-object p0
.end method

.method public withClientNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mClientNonce:Ljava/lang/String;

    return-object p0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "clientNonce can not be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeviceIdentity(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDeviceIdentity:Ljava/lang/String;

    return-object p0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceIdentity can not be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withFriendlyName(Ljava/lang/String;I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mFriendlyName:Ljava/lang/String;

    const/16 p1, 0x8

    if-eq p2, p1, :cond_2

    const/16 p1, 0x9

    if-eq p2, p1, :cond_1

    .line 157
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    goto :goto_0

    .line 154
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;->FULL:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    goto :goto_0

    .line 151
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;->SHORT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const-string p1, ""

    .line 144
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mFriendlyName:Ljava/lang/String;

    .line 145
    sget-object p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;->NONE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mNameType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$DeviceNameType;

    return-object p0
.end method

.method public withProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mProductIndex:Ljava/lang/String;

    return-object p0

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ProductIndex can not be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withRadio(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mDiscoveredRadios:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "radio can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSoftwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSoftwareVersion:Ljava/lang/String;

    return-object p0

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "softwareVersion can not be empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSupportsAuthenticatedEcdhe(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportedAuthenciatedEcdhe:Z

    return-object p0
.end method

.method public withSupportsPin(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportsPin:Z

    return-object p0
.end method

.method public withSupportsUnauthenticatedEcdhe(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->mSupportsUnauthenciatedEcdhe:Z

    return-object p0
.end method
