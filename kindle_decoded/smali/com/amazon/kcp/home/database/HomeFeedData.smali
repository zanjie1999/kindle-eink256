.class public interface abstract Lcom/amazon/kcp/home/database/HomeFeedData;
.super Ljava/lang/Object;
.source "HomeDatabaseModels.kt"


# virtual methods
.method public abstract getCards()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/home/database/HomeCardData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpiryTime()J
.end method

.method public abstract getTimestamp()J
.end method
