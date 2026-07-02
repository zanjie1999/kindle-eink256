.class public Lcom/amazon/kindle/observablemodel/ModelSorting;
.super Ljava/lang/Object;
.source "ModelSorting.java"


# static fields
.field public static final DIRECTION_ASCENDING:I = 0x0

.field public static final DIRECTION_DESCENDING:I = 0x1

.field public static final ORDER_ALT_AUTHOR:I = 0x13

.field public static final ORDER_ALT_TITLE:I = 0x12

.field public static final ORDER_AUTHOR:I = 0x11

.field public static final ORDER_BINDING:I = 0x23

.field public static final ORDER_COLLECTION_ORDER:I = 0x22

.field public static final ORDER_COMPLETED_DATE:I = 0x4

.field public static final ORDER_DOWNLOAD_DATE:I = 0x2

.field public static final ORDER_LAST_ACCESS_DATE:I = 0x0

.field public static final ORDER_LAST_READ_DATE:I = 0x3

.field public static final ORDER_PUBLICATION_DATE:I = 0x1

.field public static final ORDER_SERIES_ORDER:I = 0x20

.field public static final ORDER_SERIES_WHATS_NEXT_ORDER:I = 0x21

.field public static final ORDER_TITLE:I = 0x10


# instance fields
.field mEnableSection:Z

.field mOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/observablemodel/ModelSortingPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 75
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {v2, v3, v1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    .line 78
    iput-boolean p2, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mEnableSection:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    .line 37
    iput-boolean p1, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mEnableSection:Z

    return-void
.end method


# virtual methods
.method public getEnableSection()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mEnableSection:Z

    return v0
.end method

.method public getOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/ModelSortingPair;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public modelSortingByAddingOrder(Landroid/util/Pair;)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelSorting;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p1

    return-object p1
.end method

.method public modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance p1, Lcom/amazon/kindle/observablemodel/ModelSorting;

    iget-boolean v1, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mEnableSection:Z

    invoke-direct {p1, v1}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>(Z)V

    .line 61
    iput-object v0, p1, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    return-object p1
.end method

.method public modelSortingByEnablingSection(Z)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>(Z)V

    .line 67
    iget-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/amazon/kindle/observablemodel/ModelSorting;->mOrder:Ljava/util/ArrayList;

    return-object v0
.end method
