.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color$Companion;
.super Ljava/lang/Object;
.source "HighlightActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;
    .locals 6

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;->values()[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;->UNKNOWN:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$Color;

    return-object p1
.end method
