.class public Lcom/amazon/android/docviewer/HierarchicalTOCHelper;
.super Ljava/lang/Object;
.source "HierarchicalTOCHelper.java"


# direct methods
.method public static getHierarchyForPositionFromToc(IILcom/amazon/android/docviewer/IBookHierarchicalTOC;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/amazon/android/docviewer/IBookHierarchicalTOC;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-interface {p2, p0}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :goto_0
    if-eqz v0, :cond_6

    add-int/lit8 v4, v3, 0x1

    if-lt p1, v3, :cond_6

    .line 20
    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/ITOCItem;

    .line 24
    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v6

    if-gt v6, p0, :cond_2

    move-object v3, v5

    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v5

    if-le v5, p0, :cond_1

    :cond_3
    if-eqz v3, :cond_4

    .line 31
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v3

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    move v3, v4

    goto :goto_0

    :cond_6
    return-object v2
.end method
