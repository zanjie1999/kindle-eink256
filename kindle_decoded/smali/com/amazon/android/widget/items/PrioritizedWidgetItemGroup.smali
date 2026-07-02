.class public Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;
.super Lcom/amazon/android/widget/WidgetItemGroup;
.source "PrioritizedWidgetItemGroup.java"


# instance fields
.field private prioritizedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/WidgetItemGroup;-><init>(Ljava/util/List;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;->prioritizedItems:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;->prioritizedItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 4

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;->prioritizedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 45
    invoke-interface {v2, p1}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    new-instance v1, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;

    invoke-direct {v1, p1}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/android/widget/WidgetItemGroup;->items:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
