.class public final Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;
.super Ljava/lang/Object;
.source "DialogMetricsRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/DialogMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogMetricsRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogMetricsRecorder.kt\ncom/amazon/kcp/reader/DialogMetricsRecorder$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,226:1\n1819#2,2:227\n*E\n*S KotlinDebug\n*F\n+ 1 DialogMetricsRecorder.kt\ncom/amazon/kcp/reader/DialogMetricsRecorder$Companion\n*L\n179#1,2:227\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amazon/kcp/reader/DialogMetricsRecorder;
    .locals 1

    .line 197
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getInstance$p()Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    move-result-object v0

    return-object v0
.end method

.method public final resetMetricTimer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "metricName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$resetMetricTimer(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    return-void
.end method

.method public final resetMetricTimer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "metricNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$resetMetricTimer(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final resetMrprCount()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$setMrprCount$p(I)V

    return-void
.end method
