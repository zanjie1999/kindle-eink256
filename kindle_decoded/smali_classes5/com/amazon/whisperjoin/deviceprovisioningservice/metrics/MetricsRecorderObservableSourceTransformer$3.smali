.class Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;
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
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->startProfiling(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
