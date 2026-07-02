.class public Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;
.super Ljava/lang/Object;
.source "WhisperJoinBlePacket.java"


# static fields
.field private static final MAX_PACKET_PAYLOAD_SIZE:I = 0x1ee

.field private static final PACKET_OVERHEAD:I = 0x12

.field private static final TAG:Ljava/lang/String; = "WhisperJoinBlePacket"


# instance fields
.field private final mAdditionalChunks:Z

.field private final mChunkIndex:I

.field private final mPacketKey:I

.field private final mPayload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIZ[B)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_2

    if-eqz p4, :cond_1

    .line 87
    array-length v0, p4

    if-eqz v0, :cond_0

    .line 91
    iput p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mPacketKey:I

    .line 92
    iput p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mChunkIndex:I

    .line 93
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mAdditionalChunks:Z

    .line 94
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mPayload:[B

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "payload cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "payload cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "chunkIndex cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createNextResponsePacket(Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;)Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;
    .locals 4

    .line 73
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getPacketKey()I

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->getChunkIndex()I

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result p0

    const/4 v3, 0x1

    new-array v3, v3, [B

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;-><init>(IIZ[B)V

    return-object v0
.end method

.method public static createPackets([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 41
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 48
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 49
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 56
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    add-int/lit16 v5, v3, 0x1ee

    .line 57
    array-length v6, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 60
    array-length v6, v5

    add-int/2addr v3, v6

    .line 61
    new-instance v6, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;

    add-int/lit8 v7, v4, 0x1

    array-length v8, p0

    if-ge v3, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v6, v0, v4, v8, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;-><init>(IIZ[B)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WhisperJoinBlePackets created for payload of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "payload cannot be empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "payload cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChunkIndex()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mChunkIndex:I

    return v0
.end method

.method public getPacketKey()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mPacketKey:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hasAdditionalChunks()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mAdditionalChunks:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhisperJoinBlePacket [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mPacketKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mChunkIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", additional-chunks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/WhisperJoinBlePacket;->mAdditionalChunks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
