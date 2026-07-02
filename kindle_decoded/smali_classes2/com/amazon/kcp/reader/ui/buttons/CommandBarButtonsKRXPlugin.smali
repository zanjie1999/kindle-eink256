.class public Lcom/amazon/kcp/reader/ui/buttons/CommandBarButtonsKRXPlugin;
.super Ljava/lang/Object;
.source "CommandBarButtonsKRXPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "CommandBarButtonsKRXPlugin"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 23
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    .line 24
    new-instance v0, Lcom/amazon/kcp/reader/ui/buttons/SearchCustomButtonProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/buttons/SearchCustomButtonProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
