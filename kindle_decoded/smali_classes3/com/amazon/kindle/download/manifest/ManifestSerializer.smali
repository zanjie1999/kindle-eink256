.class public interface abstract Lcom/amazon/kindle/download/manifest/ManifestSerializer;
.super Ljava/lang/Object;
.source "ManifestSerializer.kt"


# virtual methods
.method public abstract deserialize(Lcom/amazon/kindle/download/manifest/MDSManifest;)Ljava/lang/String;
.end method

.method public abstract serialize(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ParsingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/download/manifest/ParsingResult<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end method
