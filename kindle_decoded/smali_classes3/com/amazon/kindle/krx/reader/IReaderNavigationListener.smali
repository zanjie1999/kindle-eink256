.class public interface abstract Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;
.super Ljava/lang/Object;
.source "IReaderNavigationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
.end method

.method public abstract onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
.end method

.method public abstract onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
.end method

.method public abstract onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
.end method

.method public abstract onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
.end method
