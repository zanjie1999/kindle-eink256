.class public Lcom/amazon/kcp/library/LibraryFilterStateManager;
.super Ljava/lang/Object;
.source "LibraryFilterStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;
    }
.end annotation


# static fields
.field static final FILTER_STATE_DEFAULT_VALUE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILTER_STATE_SET_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedSelectedFilterState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final filterStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final filterStatePersistKey:Ljava/lang/String;

.field private itemIdToGroupId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemIdToItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->FILTER_STATE_DEFAULT_VALUE:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToItem:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToGroupId:Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    .line 63
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    .line 64
    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStatePersistKey:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->restoreSelectedFilterState()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    .line 66
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    invoke-interface {p3, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->createHelperMappings()V

    .line 69
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getLibraryFilterChangedListener()Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ILibraryFilter;->subscribe(Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryFilterStateManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->createHelperMappings()V

    return-void
.end method

.method private createHelperMappings()V
    .locals 6

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToGroupId:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToItem:Ljava/util/Map;

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 107
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 109
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToItem:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToGroupId:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLibraryFilterChangedListener()Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;
    .locals 1

    .line 73
    new-instance v0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;-><init>(Lcom/amazon/kcp/library/LibraryFilterStateManager;)V

    return-object v0
.end method

.method private notifyListeners()V
    .locals 3

    .line 429
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemWithGroup()Ljava/util/List;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 431
    invoke-interface {v2, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;->onLibraryFilterStateChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAllAndToggleItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->toggleItemId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearGroupAndToggleItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->toggleItemId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearItemIds()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStatePersistKey:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterStateManager;->FILTER_STATE_DEFAULT_VALUE:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putStringSetAsync(Ljava/lang/String;Ljava/util/Set;)V

    .line 365
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->notifyListeners()V

    :cond_0
    return-void
.end method

.method convertToMap(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 160
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 161
    aget-object v1, v1, v3

    .line 163
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemInLibraryFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method convertToSet(Ljava/util/Map;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 192
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSelectedFilterItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->itemIdToItem:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 260
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemIdsForGroup(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    .line 291
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 293
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedItemIdsWithGroup()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 275
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 274
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemWithGroup()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 223
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 224
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 227
    invoke-virtual {v5}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getSerializedState()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->convertToSet(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isItemIdSelected(Ljava/lang/String;)Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 421
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isItemIdSelected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    .line 411
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isItemInLibraryFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryFilter;->getItemsMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onLogout(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 437
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->clearItemIds()V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method restoreFromSerializedState(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->convertToMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    .line 130
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->saveSelectedFilterState(Ljava/util/Map;)V

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->notifyListeners()V

    return-void
.end method

.method restoreSelectedFilterState()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStatePersistKey:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/library/LibraryFilterStateManager;->FILTER_STATE_DEFAULT_VALUE:Ljava/util/Set;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->convertToMap(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method saveSelectedFilterState(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->convertToSet(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->filterStatePersistKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putStringSetAsync(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public toggleItemId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->toggleItemSelectionState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->notifyListeners()V

    :cond_0
    return-void
.end method

.method toggleItemSelectionState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultFilterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 307
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 310
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 317
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager;->cachedSelectedFilterState:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->saveSelectedFilterState(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
