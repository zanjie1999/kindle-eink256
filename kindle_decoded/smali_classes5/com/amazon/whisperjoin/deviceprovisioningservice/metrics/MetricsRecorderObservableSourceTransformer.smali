.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;
.super Ljava/lang/Object;
.source "MetricsRecorderObservableSourceTransformer.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

.field private final mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 26
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)V

    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)V

    .line 38
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;)V

    .line 44
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
