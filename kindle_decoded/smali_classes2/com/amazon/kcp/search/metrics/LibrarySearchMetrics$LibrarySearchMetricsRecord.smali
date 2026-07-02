.class Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;
.super Ljava/lang/Object;
.source "LibrarySearchMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LibrarySearchMetricsRecord"
.end annotation


# instance fields
.field length:I

.field libraryResultPosition:I

.field libraryResultsShown:Z

.field storeResultPosition:I

.field storeResultsShown:Z

.field tabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;IIIZZLjava/lang/String;)V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->length:I

    .line 560
    iput p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultPosition:I

    .line 561
    iput p4, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultPosition:I

    .line 562
    iput-boolean p5, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultsShown:Z

    .line 563
    iput-boolean p6, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultsShown:Z

    .line 564
    iput-object p7, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->tabName:Ljava/lang/String;

    return-void
.end method
