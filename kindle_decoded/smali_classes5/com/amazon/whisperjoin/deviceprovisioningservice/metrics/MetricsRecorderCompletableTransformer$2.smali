.class Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;
.super Ljava/lang/Object;
.source "MetricsRecorderCompletableTransformer.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->apply(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-static {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->stopProfiling(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;Ljava/lang/String;)V

    return-void
.end method
