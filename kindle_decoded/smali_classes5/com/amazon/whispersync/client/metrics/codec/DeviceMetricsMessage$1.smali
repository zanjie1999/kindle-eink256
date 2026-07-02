.class final Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/ExtensionRegistry;
    .locals 6

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$5002(Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "DeviceSerialNumber"

    const-string v2, "DeviceType"

    const-string v3, "Tag"

    const-string v4, "Metadata"

    const-string v5, "MetricEntry"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage;

    const-class v3, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricBatchMessage$Builder;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$1502(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$1500()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "Timestamp"

    const-string v2, "Program"

    const-string v3, "Source"

    const-string v4, "DataPoint"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage;

    const-class v3, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$MetricEntryMessage$Builder;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$1602(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$2802(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$2800()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "Value"

    const-string v2, "Name"

    const-string v3, "SampleSize"

    const-string v4, "Type"

    filled-new-array {v2, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;

    const-class v4, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$Builder;

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$2902(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4002(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;)Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4000()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v2, "Key"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue;

    const-class v3, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$KeyValue$Builder;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage;->access$4102(Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
