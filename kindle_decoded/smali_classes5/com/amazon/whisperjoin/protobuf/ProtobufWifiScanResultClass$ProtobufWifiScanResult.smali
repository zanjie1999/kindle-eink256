.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufWifiScanResultClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufWifiScanResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private frequencyBand_:I

.field private memoizedIsInitialized:B

.field private signalStrength_:I

.field private volatile ssid_:Ljava/lang/Object;

.field private wifiKeyManagement_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 986
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    .line 994
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 324
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 111
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    .line 113
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    .line 114
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;-><init>()V

    if-eqz p2, :cond_8

    .line 132
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 142
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 171
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    .line 172
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    goto :goto_0

    .line 166
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 156
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 158
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 160
    :cond_4
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    .line 161
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 150
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    .line 151
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 180
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 181
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 178
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 185
    throw p1

    .line 183
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 184
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 128
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 324
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 101
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Ljava/lang/Object;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    .locals 1

    .line 990
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 526
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 397
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    if-nez v1, :cond_1

    .line 398
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 400
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    .line 403
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 405
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 409
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 410
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 412
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 413
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 414
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getFrequencyBand()I

    move-result v1

    .line 415
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getFrequencyBand()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 417
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 418
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 419
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSignalStrength()I

    move-result v1

    .line 420
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSignalStrength()I

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 422
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;
    .locals 1

    .line 1013
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;",
            ">;"
        }
    .end annotation

    .line 1009
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 368
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 372
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 373
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 376
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    .line 377
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 380
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    .line 381
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 384
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    .line 385
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    .line 221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 224
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 226
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 1

    .line 274
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    :cond_0
    return-object v0
.end method

.method public hasFrequencyBand()Z
    .locals 2

    .line 288
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignalStrength()Z
    .locals 2

    .line 311
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSsid()Z
    .locals 2

    .line 210
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 264
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 428
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 432
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 435
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 439
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    add-int/2addr v0, v1

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 443
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getFrequencyBand()I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 447
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->getSignalStrength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 449
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 194
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 326
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSsid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return v2

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return v2

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasFrequencyBand()Z

    move-result v0

    if-nez v0, :cond_4

    .line 339
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return v2

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_5

    .line 343
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return v2

    .line 346
    :cond_5
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 1

    .line 524
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 2

    .line 539
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;
    .locals 2

    .line 532
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$1;)V

    .line 533
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 355
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 356
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->wifiKeyManagement_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 358
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 359
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->frequencyBand_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 361
    :cond_2
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 362
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResult;->signalStrength_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
