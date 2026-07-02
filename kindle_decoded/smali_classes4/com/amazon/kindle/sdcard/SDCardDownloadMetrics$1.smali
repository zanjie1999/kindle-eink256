.class synthetic Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics$1;
.super Ljava/lang/Object;
.source "SDCardDownloadMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$model$content$ContentState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/amazon/kindle/model/content/ContentState;->values()[Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
