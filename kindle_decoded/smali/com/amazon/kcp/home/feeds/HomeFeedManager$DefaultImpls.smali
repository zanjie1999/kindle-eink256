.class public final Lcom/amazon/kcp/home/feeds/HomeFeedManager$DefaultImpls;
.super Ljava/lang/Object;
.source "HomeFeedManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic makeHomeFeedRequest$default(Lcom/amazon/kcp/home/feeds/HomeFeedManager;ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 88
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/amazon/kcp/home/feeds/HomeFeedManager;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: makeHomeFeedRequest"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
