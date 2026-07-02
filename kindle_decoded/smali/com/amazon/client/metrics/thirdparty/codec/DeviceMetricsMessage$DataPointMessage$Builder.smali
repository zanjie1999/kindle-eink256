.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;",
        ">;",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private sampleSize_:I

.field private type_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->name_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->value_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->type_:I

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->name_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->value_:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->type_:I

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
    .locals 5

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3602(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3702(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->sampleSize_:I

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3802(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;I)I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3902(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;I)I

    invoke-static {v0, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$4002(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSampleSize()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    const-class v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->hasName()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->hasSampleSize()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->hasType()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3600(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$3700(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->hasSampleSize()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->getSampleSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setSampleSize(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->getType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setType(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    :cond_4
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->access$4100(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

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

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
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

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setName(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setSampleSize(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->sampleSize_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setType(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->type_:I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
