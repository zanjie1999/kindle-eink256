.class public interface abstract Lcom/audible/mobile/download/UrlResolutionStrategy;
.super Ljava/lang/Object;
.source "UrlResolutionStrategy.java"


# virtual methods
.method public abstract resolve(Lcom/audible/mobile/download/ContentType;Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract resolve(Lcom/audible/mobile/download/ContentType;Ljava/util/Map;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/download/ContentType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation
.end method

.method public abstract transform(Lcom/audible/mobile/download/ContentType;Ljava/net/URL;)Ljava/net/URL;
.end method
