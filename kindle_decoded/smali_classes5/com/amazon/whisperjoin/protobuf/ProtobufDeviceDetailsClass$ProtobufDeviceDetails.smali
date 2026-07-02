.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufDeviceDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufDeviceDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

.field private volatile deviceFirmwareRevision_:Ljava/lang/Object;

.field private volatile deviceHardwareRevision_:Ljava/lang/Object;

.field private volatile deviceModelNumber_:Ljava/lang/Object;

.field private volatile deviceSerialNumber_:Ljava/lang/Object;

.field private lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

.field private volatile manufacturer_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile networkSyncToken_:Ljava/lang/Object;

.field private volatile sdkVersion_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1991
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    .line 1999
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 627
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    const-string v0, ""

    .line 158
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    .line 159
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    .line 160
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    .line 161
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 162
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    .line 163
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    .line 164
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    .line 182
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_f

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_e

    const/16 v5, 0xa

    if-eq v3, v5, :cond_d

    const/16 v5, 0x12

    if-eq v3, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_9

    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x42

    if-eq v3, v5, :cond_2

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_1

    .line 192
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 261
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 262
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 263
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 256
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 257
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_3
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 244
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v0

    .line 246
    :goto_1
    sget-object v5, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    iput-object v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-eqz v3, :cond_5

    .line 248
    invoke-virtual {v3, v5}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 249
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 251
    :cond_5
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    goto :goto_0

    .line 230
    :cond_6
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    .line 231
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v0

    .line 233
    :goto_2
    sget-object v5, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    iput-object v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-eqz v3, :cond_8

    .line 235
    invoke-virtual {v3, v5}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    .line 236
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 238
    :cond_8
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    goto/16 :goto_0

    .line 223
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 224
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 225
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 217
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 218
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 219
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 211
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 212
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 213
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 206
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 207
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 200
    iget v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    .line 201
    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 271
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 272
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 269
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :goto_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 276
    throw p1

    .line 274
    :cond_f
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 275
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 178
    :cond_10
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 155
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 627
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    return p1
.end method

.method static synthetic access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 148
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Ljava/lang/Object;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 1

    .line 1995
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 280
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 922
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 874
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 747
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    if-nez v1, :cond_1

    .line 748
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 750
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    .line 753
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 754
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getManufacturer()Ljava/lang/String;

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

    .line 758
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 759
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 760
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 763
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 764
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 765
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 768
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 769
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 770
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 773
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 774
    :goto_8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 775
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 778
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 779
    :goto_a
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 780
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v1

    .line 781
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 783
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v2

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 784
    :goto_c
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v1, :cond_15

    .line 785
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v1

    .line 786
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_d
    if-eqz v1, :cond_17

    .line 788
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasNetworkSyncToken()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasNetworkSyncToken()Z

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    .line 789
    :goto_e
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasNetworkSyncToken()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 790
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_f

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_f
    if-eqz v1, :cond_1a

    .line 793
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasSdkVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasSdkVersion()Z

    move-result v2

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    .line 794
    :goto_10
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasSdkVersion()Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v1, :cond_1b

    .line 795
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_11

    :cond_1b
    const/4 v1, 0x0

    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 798
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;
    .locals 1

    .line 2018
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceCapabilitiesMap_:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeviceFirmwareRevision()Ljava/lang/String;
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    .line 472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 475
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 477
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceHardwareRevision()Ljava/lang/String;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    .line 430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 433
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 435
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceModelNumber()Ljava/lang/String;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    .line 346
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 349
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 351
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    .line 388
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 389
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 391
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 393
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->lastConnectionWifiDetails_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    .line 304
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 307
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 309
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNetworkSyncToken()Ljava/lang/String;
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    .line 556
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 557
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 559
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 561
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;",
            ">;"
        }
    .end annotation

    .line 2014
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    .line 598
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 599
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 601
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 603
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 4

    .line 704
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 708
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 709
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 711
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 712
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 714
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 715
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 718
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    :cond_4
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 721
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 723
    :cond_5
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 725
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 727
    :cond_6
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 729
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 731
    :cond_7
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 732
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 734
    :cond_8
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 735
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 737
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDeviceCapabilitiesMap()Z
    .locals 2

    .line 507
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceFirmwareRevision()Z
    .locals 2

    .line 465
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceHardwareRevision()Z
    .locals 2

    .line 423
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

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

.method public hasDeviceModelNumber()Z
    .locals 2

    .line 339
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

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

.method public hasDeviceSerialNumber()Z
    .locals 2

    .line 381
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

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

.method public hasLastConnectionWifiDetails()Z
    .locals 2

    .line 528
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasManufacturer()Z
    .locals 2

    .line 297
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNetworkSyncToken()Z
    .locals 2

    .line 549
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSdkVersion()Z
    .locals 2

    .line 591
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x100

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

    .line 804
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 808
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 809
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 811
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 815
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 819
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 823
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 827
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 831
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 835
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasNetworkSyncToken()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 839
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 841
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasSdkVersion()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 843
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    mul-int/lit8 v0, v0, 0x1d

    .line 845
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 846
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 285
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 629
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasManufacturer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceModelNumber()Z

    move-result v0

    if-nez v0, :cond_3

    .line 638
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 641
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceSerialNumber()Z

    move-result v0

    if-nez v0, :cond_4

    .line 642
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 645
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceHardwareRevision()Z

    move-result v0

    if-nez v0, :cond_5

    .line 646
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 649
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceFirmwareRevision()Z

    move-result v0

    if-nez v0, :cond_6

    .line 650
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 653
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasDeviceCapabilitiesMap()Z

    move-result v0

    if-nez v0, :cond_7

    .line 654
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 657
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 658
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 661
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 663
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v2

    .line 667
    :cond_9
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 1

    .line 920
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 2

    .line 935
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;
    .locals 2

    .line 928
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$1;)V

    .line 929
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

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

    .line 673
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->manufacturer_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 676
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 677
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceModelNumber_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 679
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 680
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 682
    :cond_2
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 683
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceHardwareRevision_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 685
    :cond_3
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 686
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->deviceFirmwareRevision_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 688
    :cond_4
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 689
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 691
    :cond_5
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 692
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 694
    :cond_6
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 695
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->networkSyncToken_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 697
    :cond_7
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 698
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->sdkVersion_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 700
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
