.class public interface abstract Lcom/amazon/kindle/krx/plugin/IPluginInitializer;
.super Ljava/lang/Object;
.source "IPluginInitializer.java"


# virtual methods
.method public abstract getInitializedPluginNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V
.end method

.method public abstract initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;ILjava/util/concurrent/ExecutorService;)V
.end method

.method public abstract initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Scope;I)V
.end method
