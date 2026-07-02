.class public interface abstract Lcom/amazon/kindle/cms/api/Update;
.super Ljava/lang/Object;
.source "Update.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract deleteItem(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method

.method public abstract updateItem(Lcom/amazon/kindle/cms/api/Item;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation
.end method
