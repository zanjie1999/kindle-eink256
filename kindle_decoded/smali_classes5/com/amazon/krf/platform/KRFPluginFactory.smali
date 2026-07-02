.class public interface abstract Lcom/amazon/krf/platform/KRFPluginFactory;
.super Ljava/lang/Object;
.source "KRFPluginFactory.java"


# virtual methods
.method public abstract createPlugin()Lcom/amazon/krf/platform/KRFPlugin;
.end method

.method public abstract finalizeFactory()V
.end method

.method public abstract getMetadata()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVersions()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initializeFactory()V
.end method
