.class Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;
.super Ljava/lang/Object;
.source "MetricsRecorderCompletableTransformer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->apply(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->FAILURE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->stopProfiling(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;Ljava/lang/String;)V

    return-void
.end method
