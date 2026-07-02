.class Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$2;
.super Lcom/amazon/client/metrics/thirdparty/IMetricsService$Stub;
.source "GenericMetricsServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$2;->this$0:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/IMetricsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordMetricsSetting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public record(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "record"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter$2;->this$0:Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/GenericMetricsServiceAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 155
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 156
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 158
    invoke-static {p7}, Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;->convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 159
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/MetricEntry;

    move-object v2, p1

    move-wide v3, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
