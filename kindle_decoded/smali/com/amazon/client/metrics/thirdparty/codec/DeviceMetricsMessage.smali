.class public final Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValue;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$KeyValueOrBuilder;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessage;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessage;,
        Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_metrics_DataPointMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_metrics_KeyValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_metrics_MetricBatchMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_metrics_MetricEntryMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\nRcom/amazon/client/metrics/thirdparty/codec/protocol/DeviceMetricsMessage.0.2.proto\u0012\u0007metrics\"\u00a8\u0001\n\u0012MetricBatchMessage\u0012\u001a\n\u0012deviceSerialNumber\u0018\u0001 \u0002(\t\u0012\u0012\n\ndeviceType\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003tag\u0018\u0003 \u0001(\t\u0012#\n\u0008metadata\u0018\u0004 \u0003(\u000b2\u0011.metrics.KeyValue\u00120\n\u000bmetricEntry\u0018\u0005 \u0003(\u000b2\u001b.metrics.MetricEntryMessage\"v\n\u0012MetricEntryMessage\u0012\u0011\n\ttimestamp\u0018\u0001 \u0002(\u0003\u0012\u000f\n\u0007program\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006source\u0018\u0003 \u0002(\t\u0012,\n\tdataPoint\u0018\u0004 \u0003(\u000b2\u0019.metrics.DataPointMessage\"\u00b8\u0001\n\u0010DataPointMessage\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005value\u0018\u0002 \u0002(\t\u0012\u0012\n\nSampleSize\u0018\u0003 \u0002(\u0005\u00120\n\u0004type\u0018\u0004 \u0002(\u000e2\".metrics.DataPointMessage.DataType\"A\n\u0008DataType\u0012\u000b\n\u0007COUNTER\u0010\u0000\u0012\t\n\u0005TIMER\u0010\u0001\u0012\u000c\n\u0008DISCRETE\u0010\u0002\u0012\u000f\n\u000bCLICKSTREAM\u0010\u0003\"&\n\u0008KeyValue\u0012\u000b\n\u0003key\u0018\u0001 \u0002(\t\u0012\r\n\u0005value\u0018\u0002 \u0002(\tBB\n*com.amazon.client.metrics.thirdparty.codecB\u0014DeviceMetricsMessage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;

    invoke-direct {v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "DeviceSerialNumber"

    const-string v3, "DeviceType"

    const-string v4, "Tag"

    const-string v5, "Metadata"

    const-string v6, "MetricEntry"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Timestamp"

    const-string v3, "Program"

    const-string v4, "Source"

    const-string v5, "DataPoint"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Value"

    const-string v3, "Name"

    const-string v4, "SampleSize"

    const-string v5, "Type"

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Key"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
