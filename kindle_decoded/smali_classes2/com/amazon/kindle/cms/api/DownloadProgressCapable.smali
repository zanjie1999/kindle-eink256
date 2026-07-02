.class public interface abstract Lcom/amazon/kindle/cms/api/DownloadProgressCapable;
.super Ljava/lang/Object;
.source "DownloadProgressCapable.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/Item;


# virtual methods
.method public abstract reportDownloadProgressChange(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Lcom/amazon/kindle/cms/api/Progress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method
