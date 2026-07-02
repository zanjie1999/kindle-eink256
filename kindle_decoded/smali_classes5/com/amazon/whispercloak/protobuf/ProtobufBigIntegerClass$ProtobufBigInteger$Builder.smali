.class public final Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufBigIntegerClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 432
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 311
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 432
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 317
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 321
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 0

    .line 385
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 343
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 3

    .line 349
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V

    .line 350
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->value_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->access$602(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 356
    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;I)I

    .line 357
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 362
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

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

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 337
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 333
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 2

    .line 437
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->bitField0_:I

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

    .line 304
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 397
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 401
    :cond_1
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->access$800(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 402
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 419
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
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

    .line 425
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 427
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 388
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v0, :cond_0

    .line 389
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0

    .line 391
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

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 0

    .line 473
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 0

    .line 367
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 0

    .line 468
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 293
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 452
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->bitField0_:I

    .line 453
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->value_:Lcom/google/protobuf/ByteString;

    .line 454
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 450
    throw p1
.end method
