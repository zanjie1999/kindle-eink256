.class public interface abstract Lcom/amazon/kcp/home/feeds/HomeFeedManager;
.super Ljava/lang/Object;
.source "HomeFeedManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/feeds/HomeFeedManager$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getCurrentHomeFeed()Lcom/amazon/kcp/home/models/HomeFeed;
.end method

.method public abstract getHomeFeedData()Lcom/amazon/kcp/home/models/HomeFeed;
.end method

.method public abstract getHomeFeedState()Lcom/amazon/kcp/home/models/HomeFeed$State;
.end method

.method public abstract makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V
.end method

.method public abstract onStorePurchase(Ljava/lang/String;)V
.end method
