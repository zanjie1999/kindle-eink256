.class public interface abstract Lcom/amazon/kindle/sidecar/ISidecarProvider;
.super Ljava/lang/Object;
.source "ISidecarProvider.java"


# virtual methods
.method public abstract getSidecars(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method
