.class public interface abstract Lcom/amazon/kindle/krx/update/IContentUpdateHandler;
.super Ljava/lang/Object;
.source "IContentUpdateHandler.java"


# virtual methods
.method public abstract getPluginUpdateState(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/update/PluginUpdateState;
.end method

.method public abstract onContentUpdateComplete(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onContentUpdateStart(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V
.end method
