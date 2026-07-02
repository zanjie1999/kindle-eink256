.class Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;
.super Ljava/lang/Object;
.source "MetricsRecorderObservableSourceTransformer.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    sget-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->stopProfiling(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;)V

    return-void
.end method
