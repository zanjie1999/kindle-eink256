.class public Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;
.super Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;
.source "CreateShareMetrics.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ServiceCreateShare"

    .line 16
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
