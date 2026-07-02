.class public interface abstract Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.super Ljava/lang/Object;
.source "ILibraryLookupBuilder.java"


# virtual methods
.method public abstract currentUser()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.end method

.method public abstract excludeDictionaries()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.end method

.method public abstract excludePreloads()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.end method

.method public abstract excludeUsersGuide()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.end method

.method public abstract getAsins()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract limit(Ljava/lang/Integer;)Lcom/amazon/kindle/content/ILibraryLookupBuilder;
.end method
