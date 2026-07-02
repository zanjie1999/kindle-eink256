.class public interface abstract Lcom/amazon/kindle/krx/plugin/IReaderPlugin;
.super Ljava/lang/Object;
.source "IReaderPlugin.java"


# virtual methods
.method public abstract getDependecies()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end method
