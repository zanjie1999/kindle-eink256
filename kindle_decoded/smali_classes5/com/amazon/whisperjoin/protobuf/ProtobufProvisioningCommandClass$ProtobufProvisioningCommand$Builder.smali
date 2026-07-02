.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufProvisioningCommandClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private uuid_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 511
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 562
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 381
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$1;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 511
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 562
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 387
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 391
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 0

    .line 461
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 415
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
    .locals 4

    .line 421
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$1;)V

    .line 422
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 427
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 432
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;I)I

    .line 433
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 1

    .line 438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

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

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
    .locals 1

    .line 409
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 405
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasUuid()Z
    .locals 2

    .line 520
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

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

    .line 374
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 375
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->hasUuid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 1

    .line 473
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 474
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 480
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 498
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
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

    .line 504
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    .line 506
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 1

    .line 464
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    if-eqz v0, :cond_0

    .line 465
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0

    .line 467
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

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 0

    .line 619
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 594
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

    .line 595
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 596
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 592
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 0

    .line 443
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 0

    .line 614
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 543
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->bitField0_:I

    .line 544
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandClass$ProtobufProvisioningCommand$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 545
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 541
    throw p1
.end method
