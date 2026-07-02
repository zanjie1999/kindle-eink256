.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufProvisioningCommandResponseClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private status_:I

.field private uuid_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 446
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 589
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 688
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 447
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 589
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 688
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 453
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 457
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 0

    .line 533
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 2

    .line 481
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 483
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 5

    .line 489
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V

    .line 490
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 495
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 499
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->status_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;I)I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 504
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;I)I

    .line 505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 510
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

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

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 1

    .line 477
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 473
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasStatus()Z
    .locals 2

    .line 649
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

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

.method public hasUuid()Z
    .locals 2

    .line 598
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 440
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 441
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->hasUuid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 545
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 549
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setStatus(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 552
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 555
    :cond_3
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 556
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 576
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 582
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
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

    .line 582
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 584
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 536
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    if-eqz v0, :cond_0

    .line 537
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0

    .line 539
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

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 0

    .line 745
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 720
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    .line 721
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 722
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 718
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 0

    .line 515
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 669
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    .line 670
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->status_:I

    .line 671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 0

    .line 740
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 621
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->bitField0_:I

    .line 622
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 623
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 619
    throw p1
.end method
