.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufConfigurationKeySetClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySetOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private keySet_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 454
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 330
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 454
    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 336
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureKeySetIsMutable()V
    .locals 3

    .line 456
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 457
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 458
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 340
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$400()Z

    return-void
.end method


# virtual methods
.method public addKeySet(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->ensureKeySetIsMutable()V

    .line 509
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 506
    throw p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 0

    .line 403
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 362
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 3

    .line 368
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V

    .line 369
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 371
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 372
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 375
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 1

    .line 380
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

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

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 1

    .line 356
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 352
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 323
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 2

    .line 415
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 416
    :cond_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 419
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->bitField0_:I

    goto :goto_0

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->ensureKeySetIsMutable()V

    .line 422
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 426
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    .line 427
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 441
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 443
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
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

    .line 447
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    .line 449
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 1

    .line 406
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    if-eqz v0, :cond_0

    .line 407
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0

    .line 409
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

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 0

    .line 553
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 0

    .line 385
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 0

    .line 548
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method
