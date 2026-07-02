.class synthetic Lcom/amazon/whisperjoin/metrics/MetricsRecorder$1;
.super Ljava/lang/Object;
.source "MetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$whisperjoin$metrics$WhisperJoinMetricName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->values()[Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder$1;->$SwitchMap$com$amazon$whisperjoin$metrics$WhisperJoinMetricName:[I

    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder$1;->$SwitchMap$com$amazon$whisperjoin$metrics$WhisperJoinMetricName:[I

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->FAILURE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
