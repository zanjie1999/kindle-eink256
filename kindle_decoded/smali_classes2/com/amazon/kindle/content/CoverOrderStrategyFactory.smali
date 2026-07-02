.class public final Lcom/amazon/kindle/content/CoverOrderStrategyFactory;
.super Ljava/lang/Object;
.source "CoverOrderStrategyFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoverOrderStrategy()Lcom/amazon/kindle/content/BaseCoverOrderStrategy;
    .locals 1

    .line 9
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->isInJapan()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/JPCoverOrderStrategy;->INSTANCE:Lcom/amazon/kindle/content/JPCoverOrderStrategy;

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;->INSTANCE:Lcom/amazon/kindle/content/SeriesEnabledCoverStrategy;

    :goto_0
    return-object v0
.end method
