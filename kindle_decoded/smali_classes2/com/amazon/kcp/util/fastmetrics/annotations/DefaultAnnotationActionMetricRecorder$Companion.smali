.class public final Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;
.super Ljava/lang/Object;
.source "AnnotationActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;
    .locals 5

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    .line 45
    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;

    .line 46
    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$1;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;)V

    .line 45
    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lkotlin/jvm/functions/Function3;)V

    .line 47
    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;

    .line 48
    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$2;

    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    invoke-direct {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder$Companion$create$2;-><init>(Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;)V

    .line 47
    invoke-direct {v2, p1, v3}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsHighlightActionMetricRecorder;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lkotlin/jvm/functions/Function3;)V

    .line 44
    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;-><init>(Lcom/amazon/kcp/util/fastmetrics/annotations/NotesActionMetricRecorder;Lcom/amazon/kcp/util/fastmetrics/annotations/HighlightActionMetricRecorder;)V

    return-object v0
.end method
