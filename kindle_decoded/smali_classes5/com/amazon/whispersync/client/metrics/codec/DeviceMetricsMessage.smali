.class public final Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValueOrBuilder;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessageOrBuilder;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessageOrBuilder;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;,
        Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_metrics_DataPointMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_metrics_KeyValue_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_metrics_MetricBatchMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_metrics_MetricEntryMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\n\u001eDeviceMetricsMessage.0.2.proto\u0012\u0007metrics\"\u00a8\u0001\n\u0012MetricBatchMessage\u0012\u001a\n\u0012deviceSerialNumber\u0018\u0001 \u0002(\t\u0012\u0012\n\ndeviceType\u0018\u0002 \u0001(\t\u0012\u000b\n\u0003tag\u0018\u0003 \u0001(\t\u0012#\n\u0008metadata\u0018\u0004 \u0003(\u000b2\u0011.metrics.KeyValue\u00120\n\u000bmetricEntry\u0018\u0005 \u0003(\u000b2\u001b.metrics.MetricEntryMessage\"v\n\u0012MetricEntryMessage\u0012\u0011\n\ttimestamp\u0018\u0001 \u0002(\u0003\u0012\u000f\n\u0007program\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006source\u0018\u0003 \u0002(\t\u0012,\n\tdataPoint\u0018\u0004 \u0003(\u000b2\u0019.metrics.DataPointMessage\"\u00b8\u0001\n\u0010DataPointMessage\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005value\u0018\u0002 \u0002(\t\u0012\u0012\n\nSampleSize\u0018\u0003 \u0002"

    const-string v1, "(\u0005\u00120\n\u0004type\u0018\u0004 \u0002(\u000e2\".metrics.DataPointMessage.DataType\"A\n\u0008DataType\u0012\u000b\n\u0007COUNTER\u0010\u0000\u0012\t\n\u0005TIMER\u0010\u0001\u0012\u000c\n\u0008DISCRETE\u0010\u0002\u0012\u000f\n\u000bCLICKSTREAM\u0010\u0003\"&\n\u0008KeyValue\u0012\u000b\n\u0003key\u0018\u0001 \u0002(\t\u0012\r\n\u0005value\u0018\u0002 \u0002(\tB7\n\u001fcom.amazon.client.metrics.codecB\u0014DeviceMetricsMessage"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;

    invoke-direct {v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricBatchMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_MetricEntryMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_DataPointMessage_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4100()Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->internal_static_metrics_KeyValue_fieldAccessorTable:Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->descriptor:Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
