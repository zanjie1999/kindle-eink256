.class public interface abstract Lcom/audible/mobile/stats/BadgeIconFetcher;
.super Ljava/lang/Object;
.source "BadgeIconFetcher.java"


# virtual methods
.method public abstract fetchBadgeIcons()Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getImageCacheFile(Ljava/lang/String;)Ljava/io/File;
.end method
