.class public interface abstract Lcom/amazon/android/docviewer/IKindleTOC;
.super Ljava/lang/Object;
.source "IKindleTOC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
    }
.end annotation


# virtual methods
.method public abstract getLowestLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
.end method

.method public abstract getTocRange(I)Lcom/amazon/android/docviewer/IKindleTOC$TocRange;
.end method

.method public abstract getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;
.end method

.method public abstract getTopLevelTOCItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end method
