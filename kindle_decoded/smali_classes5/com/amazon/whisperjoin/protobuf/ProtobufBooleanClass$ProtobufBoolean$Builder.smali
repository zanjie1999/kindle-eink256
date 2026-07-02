.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufBooleanClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBooleanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBooleanOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private value_:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 320
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 326
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 330
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 0

    .line 394
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 352
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 3

    .line 358
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V

    .line 359
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 364
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->value_:Z

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;Z)Z

    .line 365
    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;I)I

    .line 366
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 371
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

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

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 1

    .line 346
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 342
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 2

    .line 450
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->bitField0_:I

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

    .line 313
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    .line 314
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 406
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->setValue(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    .line 410
    :cond_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    .line 411
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 428
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
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

    .line 434
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    .line 436
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 397
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    if-eqz v0, :cond_0

    .line 398
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0

    .line 400
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

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 0

    .line 495
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 0

    .line 376
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 470
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->bitField0_:I

    .line 471
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->value_:Z

    .line 472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method
