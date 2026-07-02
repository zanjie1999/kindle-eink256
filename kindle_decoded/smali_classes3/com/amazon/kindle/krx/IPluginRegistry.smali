.class public interface abstract Lcom/amazon/kindle/krx/IPluginRegistry;
.super Ljava/lang/Object;
.source "IPluginRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;
    }
.end annotation


# virtual methods
.method public abstract getPlugin(Lcom/amazon/kindle/krx/plugin/Plugin$Entry;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/plugin/Plugin$Entry;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/IPluginRegistry$PluginConfig;",
            "Lcom/amazon/kindle/krx/plugin/IReaderPlugin;",
            ">;"
        }
    .end annotation
.end method
