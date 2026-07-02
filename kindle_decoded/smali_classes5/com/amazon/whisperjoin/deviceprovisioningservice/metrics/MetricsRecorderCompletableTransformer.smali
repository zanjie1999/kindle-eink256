.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;
.super Ljava/lang/Object;
.source "MetricsRecorderCompletableTransformer.java"

# interfaces
.implements Lio/reactivex/CompletableTransformer;


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

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 26
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Completable;)Lio/reactivex/CompletableSource;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$3;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)V

    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)V

    .line 38
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;)V

    .line 44
    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
