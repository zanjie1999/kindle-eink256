.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufWhisperJoinBlePacketClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufWhisperJoinBlePacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private additionalChunks_:Z

.field private bitField0_:I

.field private chunkIndex_:I

.field private memoizedIsInitialized:B

.field private packetKey_:I

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 886
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    .line 894
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 276
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I

    .line 103
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    .line 104
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    .line 105
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;-><init>()V

    if-eqz p2, :cond_7

    .line 123
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 127
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v5, 0x10

    if-eq v2, v5, :cond_3

    const/16 v5, 0x18

    if-eq v2, v5, :cond_2

    const/16 v5, 0x22

    if-eq v2, v5, :cond_1

    .line 133
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 155
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 150
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    .line 151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    goto :goto_0

    .line 145
    :cond_3
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    .line 146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    goto :goto_0

    .line 140
    :cond_4
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 164
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 165
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 162
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 169
    throw p1

    .line 167
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 119
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 99
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 276
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    return p1
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I

    return p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;Z)Z
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 1

    .line 890
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 173
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 481
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 350
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    if-nez v1, :cond_1

    .line 351
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 353
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    .line 356
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 357
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPacketKey()I

    move-result v1

    .line 359
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPacketKey()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 361
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 362
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getChunkIndex()I

    move-result v1

    .line 364
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getChunkIndex()I

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 366
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 367
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 368
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getAdditionalChunks()Z

    move-result v1

    .line 369
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getAdditionalChunks()Z

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 372
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 373
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 374
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 376
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

.method public getAdditionalChunks()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    return v0
.end method

.method public getChunkIndex()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 1

    .line 913
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public getPacketKey()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;",
            ">;"
        }
    .end annotation

    .line 909
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 320
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 324
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 325
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I

    .line 326
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 329
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    .line 330
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 333
    iget-boolean v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    .line 334
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 337
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    .line 338
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAdditionalChunks()Z
    .locals 2

    .line 240
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

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

.method public hasChunkIndex()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

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

.method public hasPacketKey()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPayload()Z
    .locals 2

    .line 263
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 382
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 386
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 389
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPacketKey()I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 393
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getChunkIndex()I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 398
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getAdditionalChunks()Z

    move-result v1

    .line 397
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 402
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 404
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 178
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 278
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return v2

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return v2

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v0

    if-nez v0, :cond_4

    .line 291
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return v2

    .line 294
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return v2

    .line 298
    :cond_5
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 479
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 2

    .line 494
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 2

    .line 487
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V

    .line 488
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

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

    .line 304
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 305
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->packetKey_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 307
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 308
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->chunkIndex_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 310
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 311
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->additionalChunks_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 313
    :cond_2
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 314
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->payload_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
