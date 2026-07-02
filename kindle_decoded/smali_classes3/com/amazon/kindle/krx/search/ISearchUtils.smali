.class public interface abstract Lcom/amazon/kindle/krx/search/ISearchUtils;
.super Ljava/lang/Object;
.source "ISearchUtils.java"


# virtual methods
.method public abstract hasWhitespaceOrConsecutiveSpace(Ljava/lang/String;)Z
.end method

.method public abstract isPunctuation(C)Z
.end method

.method public abstract removeStopWords(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract stripPunctuation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract stripWhitespaceAndConsecutiveSpace(Ljava/lang/String;)Ljava/lang/String;
.end method
