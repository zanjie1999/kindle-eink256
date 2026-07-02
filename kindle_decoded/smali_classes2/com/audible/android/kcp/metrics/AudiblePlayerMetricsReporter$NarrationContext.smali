.class final Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NarrationContext"
.end annotation


# instance fields
.field private final context:Ljava/lang/String;

.field private final readingMode:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->context:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->readingMode:Ljava/lang/String;

    .line 190
    iput-wide p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->time:J

    return-void
.end method

.method static synthetic access$200(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->time:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->context:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->readingMode:Ljava/lang/String;

    return-object p0
.end method
