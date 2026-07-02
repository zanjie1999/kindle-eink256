.class public interface abstract Lcom/amazon/kindle/content/loader/ILocalContentFactory;
.super Ljava/lang/Object;
.source "ILocalContentFactory.java"


# virtual methods
.method public abstract contentExists(Ljava/lang/String;)Z
.end method

.method public abstract isFileSupported(Ljava/lang/String;)Z
.end method

.method public abstract loadLocalContent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract loadLocalContent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract loadLocalContent(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract loadLocalContents(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadManifestContent(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Long;[Ljava/io/File;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract register(Lcom/amazon/kindle/content/loader/IContentLoader;)V
.end method
