.class public Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;
.super Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;
.source "UpdateShareMetrics.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;)V
    .locals 2

    const-string v0, "ServiceUpdateShare"

    const-string v1, "ALL"

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
