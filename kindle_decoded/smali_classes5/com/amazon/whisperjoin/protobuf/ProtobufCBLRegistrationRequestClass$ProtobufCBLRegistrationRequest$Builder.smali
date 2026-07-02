.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufCBLRegistrationRequestClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private expiration_:J

.field private linkCode_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 561
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->linkCode_:Ljava/lang/Object;

    .line 426
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 561
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->linkCode_:Ljava/lang/Object;

    .line 432
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 436
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 0

    .line 506
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 460
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 4

    .line 466
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V

    .line 467
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 472
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->linkCode_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 476
    :cond_1
    iget-wide v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->expiration_:J

    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;J)J

    .line 477
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;I)I

    .line 478
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    .line 483
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

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

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 1

    .line 454
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 450
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasExpiration()Z
    .locals 2

    .line 670
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

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

.method public hasLinkCode()Z
    .locals 2

    .line 570
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

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

    .line 419
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->hasLinkCode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 536
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->hasExpiration()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 2

    .line 518
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    .line 521
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->linkCode_:Ljava/lang/Object;

    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 524
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getExpiration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setExpiration(J)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 527
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 528
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 550
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
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

    .line 554
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 556
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    .line 509
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    if-eqz v0, :cond_0

    .line 510
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0

    .line 512
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

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 0

    .line 715
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setExpiration(J)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    .line 690
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    .line 691
    iput-wide p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->expiration_:J

    .line 692
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 0

    .line 488
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLinkCode(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 625
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->bitField0_:I

    .line 626
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->linkCode_:Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 623
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 0

    .line 710
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method
