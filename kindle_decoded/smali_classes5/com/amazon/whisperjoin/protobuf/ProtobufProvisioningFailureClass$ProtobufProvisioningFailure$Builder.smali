.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufProvisioningFailureClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private message_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 388
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 553
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->message_:Ljava/lang/Object;

    .line 389
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 553
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->message_:Ljava/lang/Object;

    .line 395
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V
    .locals 0

    .line 371
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 399
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 0

    .line 469
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 2

    .line 421
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 423
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 4

    .line 429
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V

    .line 430
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 435
    :goto_0
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->errorCode_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->message_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;I)I

    .line 441
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 446
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

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

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 1

    .line 417
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 413
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorCode()Z
    .locals 2

    .line 526
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

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

    .line 382
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 383
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->hasErrorCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 481
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 482
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setErrorCode(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 485
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    .line 487
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->message_:Ljava/lang/Object;

    .line 488
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 490
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 491
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 508
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 510
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
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

    .line 514
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 516
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 472
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    if-eqz v0, :cond_0

    .line 473
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0

    .line 475
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

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 0

    .line 635
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setErrorCode(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 538
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    .line 539
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->errorCode_:I

    .line 540
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 0

    .line 451
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 601
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->bitField0_:I

    .line 602
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->message_:Ljava/lang/Object;

    .line 603
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 599
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 0

    .line 630
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method
