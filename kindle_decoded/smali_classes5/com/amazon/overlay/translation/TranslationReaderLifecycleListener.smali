.class public Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;
.super Ljava/lang/Object;
.source "TranslationReaderLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onResume()V

    :cond_0
    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V
    .locals 0

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    return-void
.end method

.method public setListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->TAG:Ljava/lang/String;

    const-string v1, "Reader Listener was not properly cleanup before registering a new one."

    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationReaderLifecycleListener;->m_readerListener:Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    return-void
.end method
