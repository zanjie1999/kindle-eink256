.class public interface abstract Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;
.super Ljava/lang/Object;
.source "IBrochureAssetBuilder.java"


# virtual methods
.method public abstract downloadAsset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;
        }
    .end annotation
.end method

.method public abstract getFeatureId()Ljava/lang/String;
.end method
