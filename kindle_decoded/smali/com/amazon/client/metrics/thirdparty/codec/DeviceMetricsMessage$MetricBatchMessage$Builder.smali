.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;",
        ">;",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deviceSerialNumber_:Ljava/lang/Object;

.field private deviceType_:Ljava/lang/Object;

.field private metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private metricEntry_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceType_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->tag_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceType_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->tag_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureMetadataIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMetricEntryIsMutable()V
    .locals 3

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getMetadataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue$Builder;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getMetricEntryFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetadataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetricEntryFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->ensureMetadataIsMutable()V

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addMetricEntry(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->ensureMetricEntryIsMutable()V

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->build()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 5

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;)V

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$602(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceType_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$702(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->tag_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$802(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    :cond_3
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$902(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    :cond_5
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1002(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1102(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->buildPartial()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

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

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->clone()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getMetadataCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getMetricEntry(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    goto :goto_0
.end method

.method public getMetricEntryCount()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public hasDeviceSerialNumber()Z
    .locals 2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    const-class v2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->hasDeviceSerialNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetadataCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetadata(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetricEntryCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetricEntry(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 3

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->getDefaultInstance()Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceSerialNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$600(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasDeviceType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$700(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$800(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->tag_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    :cond_3
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->ensureMetadataIsMutable()V

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadata_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetadataFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metadataBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$900(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->ensureMetricEntryIsMutable()V

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_4

    :cond_a
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntry_:Ljava/util/List;

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->getMetricEntryFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->metricEntryBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1000(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->access$1400(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

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

    check-cast p2, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;
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

    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceSerialNumber_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setDeviceType(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->deviceType_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    move-result-object p1

    return-object p1
.end method
