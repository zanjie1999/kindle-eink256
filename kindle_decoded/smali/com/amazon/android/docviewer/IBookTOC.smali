.class public interface abstract Lcom/amazon/android/docviewer/IBookTOC;
.super Ljava/lang/Object;
.source "IBookTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IKindleTOC;


# virtual methods
.method public abstract getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;
.end method

.method public abstract getNextChapterPosition(I)I
.end method

.method public abstract getPreviousChapterPosition(I)I
.end method

.method public abstract getTOCChapters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/IChapterTOCItem;",
            ">;"
        }
    .end annotation
.end method
