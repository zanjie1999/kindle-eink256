.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufWhisperJoinBlePacketClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacketOrBuilder;"
    }
.end annotation


# instance fields
.field private additionalChunks_:Z

.field private bitField0_:I

.field private chunkIndex_:I

.field private packetKey_:I

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 517
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 819
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 518
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V
    .locals 0

    .line 500
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 819
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 524
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 528
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 0

    .line 610
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 556
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 5

    .line 562
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$1;)V

    .line 563
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 568
    :goto_0
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->packetKey_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 572
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->chunkIndex_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 576
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->additionalChunks_:Z

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;Z)Z

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 580
    :cond_3
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->payload_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 581
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;I)I

    .line 582
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 587
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    .locals 1

    .line 550
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 546
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalChunks()Z
    .locals 2

    .line 780
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

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

    .line 732
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

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

    .line 684
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

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

    .line 828
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 511
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 512
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 641
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->hasPacketKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->hasChunkIndex()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->hasAdditionalChunks()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->hasPayload()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 622
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 623
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPacketKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPacketKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setPacketKey(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 626
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasChunkIndex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getChunkIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setChunkIndex(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 629
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasAdditionalChunks()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getAdditionalChunks()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setAdditionalChunks(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 632
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 633
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 635
    :cond_4
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 662
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 664
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    .line 670
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 613
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    if-eqz v0, :cond_0

    .line 614
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0

    .line 616
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 0

    .line 876
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdditionalChunks(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 800
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    .line 801
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->additionalChunks_:Z

    .line 802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setChunkIndex(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 752
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    .line 753
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->chunkIndex_:I

    .line 754
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 0

    .line 592
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPacketKey(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    .line 704
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    .line 705
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->packetKey_:I

    .line 706
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 851
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->bitField0_:I

    .line 852
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 849
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;
    .locals 0

    .line 871
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufWhisperJoinBlePacketClass$ProtobufWhisperJoinBlePacket$Builder;

    move-result-object p1

    return-object p1
.end method
