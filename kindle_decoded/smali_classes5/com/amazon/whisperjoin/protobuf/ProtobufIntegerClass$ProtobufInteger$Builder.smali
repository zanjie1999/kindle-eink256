.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufIntegerClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufIntegerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufIntegerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private value_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 319
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$1;)V
    .locals 0

    .line 301
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 325
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 329
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 0

    .line 393
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 351
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
    .locals 3

    .line 357
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$1;)V

    .line 358
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 363
    :goto_0
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->value_:I

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;I)I

    .line 364
    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;I)I

    .line 365
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

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

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
    .locals 1

    .line 345
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 341
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 2

    .line 449
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->bitField0_:I

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

    .line 312
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 1

    .line 405
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setValue(I)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    .line 409
    :cond_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    .line 410
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 427
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 429
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
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

    .line 433
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    .line 435
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 1

    .line 396
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    if-eqz v0, :cond_0

    .line 397
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0

    .line 399
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

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 0

    .line 494
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 0

    .line 375
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 0

    .line 489
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(I)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;
    .locals 1

    .line 469
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->bitField0_:I

    .line 470
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->value_:I

    .line 471
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
