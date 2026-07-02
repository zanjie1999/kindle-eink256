.class public interface abstract Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;
.super Ljava/lang/Object;
.source "IRevokeTrackerDAO.java"


# virtual methods
.method public abstract deleteRevokeTrackers(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllRevokeTrackers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRevokeTrackerByAsin(Ljava/lang/String;)Lcom/amazon/kindle/revoke/IRevokeTracker;
.end method

.method public abstract getRevokeTrackersByFailureType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/revoke/IRevokeTracker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/amazon/kindle/revoke/IRevokeTracker;)J
.end method
