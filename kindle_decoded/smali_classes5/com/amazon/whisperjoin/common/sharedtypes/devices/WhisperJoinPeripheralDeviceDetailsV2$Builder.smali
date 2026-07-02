.class public Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;
.super Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;
.source "WhisperJoinPeripheralDeviceDetailsV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDistressCode:B

.field private mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-byte v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mDistressCode:B

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;)B
    .locals 0

    .line 21
    iget-byte p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mDistressCode:B

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->build()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;)V

    return-object v0
.end method

.method public withDistressCode(B)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;
    .locals 3

    .line 34
    iput-byte p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mDistressCode:B

    .line 35
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v0

    iget-byte v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mDistressCode:B

    sget-object v2, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 37
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(III)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-object p0
.end method
