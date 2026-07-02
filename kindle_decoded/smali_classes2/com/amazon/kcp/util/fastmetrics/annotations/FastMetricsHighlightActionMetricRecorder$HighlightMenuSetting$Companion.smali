.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting$Companion;
.super Ljava/lang/Object;
.source "HighlightActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Z)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;->ON:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;->OFF:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder$HighlightMenuSetting;

    :goto_0
    return-object p1
.end method
