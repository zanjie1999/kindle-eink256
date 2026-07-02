.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;",
        ">;",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$4700()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 4

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$4902(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$5002(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$5102(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$4400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    const-class v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->hasKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$4900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$5000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->access$5200(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
