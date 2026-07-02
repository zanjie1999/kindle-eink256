.class public interface abstract Lcom/amazon/kcp/wordwise/gloss/IGlossModel;
.super Ljava/lang/Object;
.source "IGlossModel.java"


# virtual methods
.method public abstract applyOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V
.end method

.method public abstract cleanUp()V
.end method

.method public abstract getAcr()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDictionaryId()Ljava/lang/String;
.end method

.method public abstract getDictionaryMaxTermLength()I
.end method

.method public abstract getDictionaryRevision()Ljava/lang/Integer;
.end method

.method public abstract getDictionaryTermTerminatorList()Ljava/util/List;
.end method

.method public abstract getDictionaryTokenSeparator()Ljava/lang/String;
.end method

.method public abstract getGlosses(IILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSidecarBookRevision()Ljava/lang/String;
.end method

.method public abstract getSidecarRevision()Ljava/lang/Integer;
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

.method public abstract isValid()Z
.end method

.method public abstract suppressSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
.end method
