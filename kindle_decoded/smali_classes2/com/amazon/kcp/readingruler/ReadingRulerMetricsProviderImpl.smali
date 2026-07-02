.class public final Lcom/amazon/kcp/readingruler/ReadingRulerMetricsProviderImpl;
.super Ljava/lang/Object;
.source "ReadingRulerMetricsImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetricsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetrics()Lcom/amazon/kcp/util/fastmetrics/ReadingRulerMetrics;
    .locals 3

    .line 16
    new-instance v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;-><init>(Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
