.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;
.super Ljava/lang/Object;
.source "MetricsRecorderSingleTransformer.java"

# interfaces
.implements Lio/reactivex/SingleTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Upstream:",
        "Ljava/lang/Object;",
        "Downstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleTransformer<",
        "TUpstream;TDownstream;>;"
    }
.end annotation


# instance fields
.field private final mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

.field private final mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;)Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;->mSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;->mMetricsRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Single;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "TUpstream;>;)",
            "Lio/reactivex/SingleSource<",
            "TDownstream;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$3;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$3;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;)V

    .line 31
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;)V

    .line 37
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderSingleTransformer;)V

    .line 43
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
