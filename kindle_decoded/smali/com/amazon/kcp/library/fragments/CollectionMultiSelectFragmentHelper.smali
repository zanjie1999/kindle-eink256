.class public Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;
.super Ljava/lang/Object;
.source "CollectionMultiSelectFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;
    }
.end annotation


# static fields
.field private static final CHECKED_BOOK_IDS_KEY:Ljava/lang/String; = "CheckedBookIds"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookIdsInAdapter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field checkedBookIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->bookIdsInAdapter:Ljava/util/Set;

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->setLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V

    return-void
.end method

.method private isFragmentOrAdapterNull()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->hasAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static transformLibraryItemsToCollectionItems(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getSortedCollectionItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 174
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 181
    invoke-interface {v2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    invoke-interface {v2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_1
    :try_start_0
    invoke-interface {v2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/amazon/kindle/collections/CollectionsManager;->generateCollectionItem(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v3

    .line 185
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 188
    sget-object v4, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to collection "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getCheckedLibraryItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    new-instance v3, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-direct {v3, v0}, Lcom/amazon/kcp/library/CollectionMultiSelectItemsFilter;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const-string v5, "All"

    const/4 v6, 0x0

    .line 145
    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notifyListener()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->listener:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->bookIdsInAdapter:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;->onSelectionChanged(Ljava/util/Set;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "CheckedBookIds"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    return-void
.end method

.method public onDeselectAll()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->isFragmentOrAdapterNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->notifyDataSetChanged()V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    return-void
.end method

.method public onItemClicked(IZ)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->isFragmentOrAdapterNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 77
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 80
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->isFragmentOrAdapterNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->setBookItems(Ljava/util/List;)V

    .line 130
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "CheckedBookIds"

    .line 91
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSelectAll()V
    .locals 3

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->isFragmentOrAdapterNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 102
    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->checkedBookIds:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;->notifyDataSetChanged()V

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    :cond_2
    return-void
.end method

.method public setBookItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 137
    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->bookIdsInAdapter:Ljava/util/Set;

    return-void
.end method

.method public setLibraryAdapterFragment(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->fragment:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$ILibraryAdapterFragment;

    return-void
.end method

.method public setMultiSelectListener(Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->listener:Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->notifyListener()V

    return-void
.end method
