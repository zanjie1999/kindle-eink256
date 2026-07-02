.class public Lcom/amazon/kcp/reader/KRXPluginManager;
.super Ljava/lang/Object;
.source "KRXPluginManager.java"


# direct methods
.method public static final initialize(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)V
    .locals 3

    .line 25
    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->getInstance()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v1, p0, v2}, Lcom/amazon/kindle/krx/plugin/IPluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V

    return-void
.end method
