.class public interface abstract Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;
.super Ljava/lang/Object;
.source "TopologicallySortedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getAllDependencies(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getDependencies(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getDependents(Ljava/lang/Object;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract topoLeafList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract topoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
