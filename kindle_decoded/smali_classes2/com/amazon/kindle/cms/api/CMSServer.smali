.class public interface abstract Lcom/amazon/kindle/cms/api/CMSServer;
.super Ljava/lang/Object;
.source "CMSServer.java"


# virtual methods
.method public abstract addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract beginSync(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract endSync(Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isSyncNeeded(Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract notifyFTUEEnd(Landroid/net/Uri;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract notifyFTUEStart(Landroid/net/Uri;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract notifyThumbnailChange(Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract postAsDelivery(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method
