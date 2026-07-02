.class final Lcom/amazon/kcp/util/fastmetrics/NoOpReadingRulerMetricsImpl;
.super Ljava/lang/Object;
.source "ReadingRulerMetricsManager.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBookOpened(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "docViewer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
