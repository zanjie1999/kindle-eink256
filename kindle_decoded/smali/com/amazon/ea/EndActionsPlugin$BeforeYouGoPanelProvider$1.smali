.class Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider$1;
.super Ljava/lang/Object;
.source "EndActionsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 3

    .line 400
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "LeftNav"

    const-string v2, "BeforeYouGo"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 403
    invoke-virtual {v0, v1}, Lcom/amazon/ea/ReaderEventHandler;->launchEndActions(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V

    const/4 v0, 0x1

    return v0
.end method
