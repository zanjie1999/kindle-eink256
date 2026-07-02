.class public interface abstract Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;
.super Ljava/lang/Object;
.source "ReadingModeBookViewController.kt"


# virtual methods
.method public abstract close()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getCurrentPageStartPosition()J
.end method

.method public abstract getDefaultReadingModeEquivalentPosition(I)Ljava/lang/Integer;
.end method

.method public abstract getTocForReadingMode()Lcom/amazon/kindle/krx/reader/ITableOfContents;
.end method

.method public abstract isNotchSupportEnabled()Z
.end method

.method public abstract navigateToPosition(I)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/BookReadingMode;Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/app/Activity;Landroid/content/Context;Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;Ljava/lang/ref/WeakReference;Ljava/lang/Long;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/reader/BookReadingMode;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/recaps/controller/PageChangeDelegateInterface;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract setTTSReaderNavigationListener(Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;)V
.end method

.method public abstract startTTS()V
.end method
