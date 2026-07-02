.class public interface abstract Lcom/amazon/android/docviewer/IBookHierarchicalTOC;
.super Ljava/lang/Object;
.source "IBookHierarchicalTOC.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IBookTOC;


# virtual methods
.method public abstract getHierarchyForPosition(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end method
