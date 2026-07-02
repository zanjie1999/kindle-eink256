.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufStartProvisioningResponseClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestId_:I

.field private status_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 385
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$1;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 391
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 395
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 0

    .line 465
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 419
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
    .locals 4

    .line 425
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$1;)V

    .line 426
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 431
    :goto_0
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->requestId_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 435
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->status_:I

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;I)I

    .line 436
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;I)I

    .line 437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 1

    .line 442
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

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

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
    .locals 1

    .line 413
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 409
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasRequestId()Z
    .locals 2

    .line 527
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStatus()Z
    .locals 2

    .line 575
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 378
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    .line 379
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->hasRequestId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 1

    .line 477
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setRequestId(I)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    .line 481
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setStatus(I)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    .line 484
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    .line 485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 505
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 507
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
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

    .line 511
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    .line 513
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 1

    .line 468
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    if-eqz v0, :cond_0

    .line 469
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0

    .line 471
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

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 0

    .line 620
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 0

    .line 447
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRequestId(I)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 1

    .line 547
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    .line 548
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->requestId_:I

    .line 549
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStatus(I)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 1

    .line 595
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->bitField0_:I

    .line 596
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->status_:I

    .line 597
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;
    .locals 0

    .line 615
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufStartProvisioningResponseClass$ProtobufStartProvisioningResponse$Builder;

    move-result-object p1

    return-object p1
.end method
