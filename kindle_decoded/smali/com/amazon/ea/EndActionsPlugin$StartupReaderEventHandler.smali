.class Lcom/amazon/ea/EndActionsPlugin$StartupReaderEventHandler;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "EndActionsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupReaderEventHandler"
.end annotation


# direct methods
.method private constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/amazon/ea/EndActionsPlugin$StartupReaderEventHandler;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 324
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ReaderEventHandler;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 329
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ReaderEventHandler;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 334
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ea/ReaderEventHandler;->onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V

    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 1

    .line 339
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ReaderEventHandler;->onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V

    return-void
.end method
