.class public interface abstract Lcom/amazon/kcp/store/listener/StoreInterface;
.super Ljava/lang/Object;
.source "StoreInterface.java"

# interfaces
.implements Lcom/amazon/kcp/store/listener/IWebViewJavascriptInjector;


# virtual methods
.method public abstract executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract onOpenLocalBook()V
.end method

.method public abstract onTosOpened()V
.end method

.method public abstract openArticle(Ljava/lang/String;)V
.end method

.method public abstract openExternalUrlsInternally(Z)V
.end method

.method public abstract setPageListener(Ljava/lang/String;Lcom/amazon/kcp/store/listener/IPageListener;)V
.end method

.method public abstract setStoreLoaded(Z)V
.end method
