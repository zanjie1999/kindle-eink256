.class public interface abstract Lcom/amazon/kindle/krx/library/ILibraryEventListener;
.super Ljava/lang/Object;
.source "ILibraryEventListener.java"


# virtual methods
.method public abstract onContentAdd(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract onContentDelete(Ljava/lang/String;Z)V
.end method

.method public abstract onContentRevoked(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onContentUpdate(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)V
.end method
