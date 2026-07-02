.class public interface abstract Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;
.super Ljava/lang/Object;
.source "IGlossDictionary.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMaxTermLength()I
.end method

.method public abstract getRevision()Ljava/lang/Integer;
.end method

.method public abstract getSimilarWords(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTermTerminatorList()Ljava/util/List;
.end method

.method public abstract getTokenSeparator()Ljava/lang/String;
.end method

.method public abstract getWordSenses(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;",
            ">;"
        }
    .end annotation
.end method

.method public abstract open()Z
.end method
