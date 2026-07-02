.class public Lcom/amazon/android/docviewer/NonLinearTocTree;
.super Lcom/amazon/android/docviewer/TreeTOCItem$Tree;
.source "NonLinearTocTree.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChapterTocPosition(I)I
    .locals 3

    const-string v0, "NonLinearTocTree <getChapterTocPosition>"

    const/4 v1, 0x1

    .line 25
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v2, p0, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->itemPositionLookup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    :cond_0
    const/4 v2, 0x0

    .line 38
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 42
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
