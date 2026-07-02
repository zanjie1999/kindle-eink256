.class public interface abstract Lcom/amazon/kindle/content/loader/IContentLoader;
.super Ljava/lang/Object;
.source "IContentLoader.java"


# virtual methods
.method public abstract getPriority()I
.end method

.method public abstract getSupportedExtensions()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadContent(Ljava/lang/String;Ljava/io/File;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract loadContent(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract loadContent(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract resolveContentLoaderConflict(Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;)Z
.end method

.method public abstract resolveContentLoaderConflict(Lcom/amazon/kindle/content/ContentMetadata;)Z
.end method
