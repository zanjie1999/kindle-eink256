.class public Lcom/amazon/xray/model/grouper/ByChapterGrouper;
.super Ljava/lang/Object;
.source "ByChapterGrouper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/amazon/xray/model/object/PositionRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_ITEM:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEndPosition(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;I)I"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 35
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method

.method private static getLabel(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 49
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public group(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/PositionRange;",
            ">;>;"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/amazon/xray/plugin/util/TocUtil;->getFlattenedTocItems()Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    .line 64
    invoke-static {v0, v3}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;->getEndPosition(Ljava/util/List;I)I

    move-result v4

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/xray/model/object/PositionRange;

    .line 68
    :goto_1
    invoke-virtual {v5}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v6

    if-lt v6, v4, :cond_1

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 71
    new-instance v4, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-static {v0, v3}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;->getLabel(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lcom/amazon/xray/model/object/LabeledGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 77
    invoke-static {v0, v3}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;->getEndPosition(Ljava/util/List;I)I

    move-result v4

    goto :goto_1

    .line 81
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    new-instance p1, Lcom/amazon/xray/model/object/LabeledGroup;

    invoke-static {v0, v3}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;->getLabel(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v2}, Lcom/amazon/xray/model/object/LabeledGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
