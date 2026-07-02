.class public final Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
.super Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder<",
        "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;",
        ">;",
        "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildParsed()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->create()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/amazon/whispersync/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private static create()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->access$4500()Z

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->build()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 4

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;-><init>(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;)V

    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->access$4702(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->access$4802(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->access$4902(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;I)I

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2

    invoke-super {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x3

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clear()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clear()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clear()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clear()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearKey()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->create()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->buildPartial()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->clone()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->hasKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getDefaultInstance()Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->setKey(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_2
    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->readBytes()Lcom/amazon/whispersync/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setKey(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->key_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method setValue(Lcom/amazon/whispersync/google/protobuf/ByteString;)V
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method
