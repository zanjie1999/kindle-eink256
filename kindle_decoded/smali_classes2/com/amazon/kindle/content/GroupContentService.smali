.class public Lcom/amazon/kindle/content/GroupContentService;
.super Ljava/lang/Object;
.source "GroupContentService.java"

# interfaces
.implements Lcom/amazon/kindle/content/IGroupService;


# static fields
.field private static final ITEM_ID_COLUMN:[Ljava/lang/String;

.field private static final SINGLE_RESULT:Lcom/amazon/kindle/content/dao/ResultsLimit;


# instance fields
.field private final coverOrderStrategyFactory:Lcom/amazon/kindle/content/CoverOrderStrategyFactory;

.field private final dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

.field private final groupsAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

.field private final groupsDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/amazon/kindle/content/dao/ResultsLimit;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/content/dao/ResultsLimit;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/content/GroupContentService;->SINGLE_RESULT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    new-array v0, v1, [Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/content/GroupContentService;->ITEM_ID_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/dao/IGroupContentDAO;Lcom/amazon/kindle/content/CoverOrderStrategyFactory;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 64
    iput-object p2, p0, Lcom/amazon/kindle/content/GroupContentService;->coverOrderStrategyFactory:Lcom/amazon/kindle/content/CoverOrderStrategyFactory;

    .line 65
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "GROUP_ADD"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/GroupContentService;->groupsAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    .line 66
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-string p2, "GROUP_DELETE"

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/GroupContentService;->groupsDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 0

    .line 71
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/GroupContentService;->addGroups(Ljava/util/List;)V

    return-void
.end method

.method public addGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 2

    .line 161
    new-instance v0, Lcom/amazon/kindle/content/GroupMetadata;

    const-string v1, ""

    invoke-direct {v0, p1, v1, p3}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 163
    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupItemInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 162
    invoke-interface {p1, p3}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    .line 165
    const-class p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 166
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 167
    new-instance p3, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p3}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksAddedToSeries(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public addGroups(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 194
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 195
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/content/GroupMetadata;

    .line 197
    invoke-virtual {v6}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesType()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v8}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 200
    iget-object v8, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-virtual {v6}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v8, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v8, v6}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v6}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 204
    iget-object v10, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v10, v6, v9}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupItemInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {v9}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {v9}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    .line 212
    invoke-virtual {v6}, Lcom/amazon/kindle/content/GroupMetadata;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v6}, Lcom/amazon/kindle/content/GroupMetadata;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    iget-object v5, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v5, v0}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    .line 218
    new-instance v0, Lcom/amazon/kindle/content/GroupAddPayload;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/content/GroupAddPayload;-><init>(Ljava/util/Collection;)V

    .line 219
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onGroupAdded(Lcom/amazon/kindle/content/GroupAddPayload;)V

    .line 220
    iget-object p1, p0, Lcom/amazon/kindle/content/GroupContentService;->groupsAddMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    .line 222
    const-class p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 223
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 224
    invoke-interface {p1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksAddedToSeries(Ljava/util/Set;)V

    .line 225
    invoke-interface {p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleSeriesAdded(Ljava/util/Set;)V

    .line 226
    invoke-interface {p1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleNarrativesAdded(Ljava/util/Set;)V

    .line 227
    invoke-interface {p1, v4}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleSeriesAddedToNarratives(Ljava/util/Set;)V

    :cond_4
    return-void
.end method

.method public deleteGroup(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 80
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onGroupDelete(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->groupsDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    invoke-interface {v0, p1, v3}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    return-void
.end method

.method public deleteGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 181
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupItemDeleteEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 180
    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    .line 183
    const-class p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 184
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksRemovedFromSeries(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public deleteGroups(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 234
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 236
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    invoke-static {v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 240
    iget-object v6, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v6, v5}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    if-ne v5, v6, :cond_1

    .line 242
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    .line 250
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->onGroupDelete(Ljava/util/List;)V

    .line 251
    iget-object v2, p0, Lcom/amazon/kindle/content/GroupContentService;->groupsDeleteMessageQueue:Lcom/amazon/kindle/krx/events/ITopicMessageQueue;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/krx/events/ITopicMessageQueue;->publish(Ljava/lang/Object;Z)V

    .line 253
    const-class p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    .line 254
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 255
    invoke-interface {p1, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleSeriesRemoved(Ljava/util/Set;)V

    .line 256
    invoke-interface {p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleNarrativesRemoved(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method public getAllGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getAllGroups(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/GroupContentService;->getGroupCoverOrder(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/db/OrderBy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/GroupContentService;->getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/db/OrderBy;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1
.end method

.method getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/db/OrderBy;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    sget-object v1, Lcom/amazon/kindle/content/GroupContentService;->ITEM_ID_COLUMN:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/content/GroupContentService;->SINGLE_RESULT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getItemsForGroup(Lcom/amazon/kindle/model/content/IBookID;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p2, 0x0

    .line 126
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-static {p2}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 129
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method getGroupCoverOrder(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/db/OrderBy;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->coverOrderStrategyFactory:Lcom/amazon/kindle/content/CoverOrderStrategyFactory;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/CoverOrderStrategyFactory;->getCoverOrderStrategy()Lcom/amazon/kindle/content/BaseCoverOrderStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/CoverOrderStrategyContract;->getOrder(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/db/OrderBy;

    move-result-object p1

    return-object p1
.end method

.method public getGroupItems([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupItems([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupMetadataForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadataWithItems(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/content/GroupMetadata;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupMetadataWithItems(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupMetadataWithItemsForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroups([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
    .locals 6

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroups([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupsWithFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMaxSizeOfGroup()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getMaxSizeOfGroup()I

    move-result v0

    return v0
.end method

.method public getNumberOfGroups()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getNumberOfGroups()I

    move-result v0

    return v0
.end method

.method public getOriginTypesForNarrativeById(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getOriginTypesForNarrativeById(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOriginTypesForNarrativeByTitle(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getOriginTypesForNarrativeByTitle(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    .line 298
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Landroid/database/Cursor;

    move-result-object p1

    .line 304
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 306
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 308
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 303
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 308
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method isBookGroupType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    sget-object p1, Lcom/amazon/kindle/content/GroupContentService;->SINGLE_RESULT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    .line 359
    invoke-virtual {p1}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    const/4 v3, 0x0

    move-object v1, p2

    .line 358
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object p1

    .line 360
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 361
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 363
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v6

    :catchall_0
    move-exception p2

    .line 358
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 363
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method public isGroupComics(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
    .locals 1

    .line 350
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IS_COMIC = 1 AND GROUP_ID = ?"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/GroupContentService;->isBookGroupType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isGroupFalkorStory(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "IS_FALKOR_EPISODE = 1 AND GROUP_ID = ?"

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/GroupContentService;->isBookGroupType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public updateGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 174
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->createGroupItemUpdateEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->runTransaction(Ljava/lang/Iterable;)V

    return-void
.end method

.method public wrapLibraryQuery(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
    .locals 11

    move-object v0, p0

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Lcom/amazon/kindle/db/OrderBy;

    move-object/from16 v10, p9

    invoke-direct {v1, v10}, Lcom/amazon/kindle/db/OrderBy;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 94
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v7, v1

    move-object/from16 v9, p10

    .line 93
    invoke-interface/range {v2 .. v9}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getFilteredLibraryContent(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v8

    .line 95
    iget-object v2, v0, Lcom/amazon/kindle/content/GroupContentService;->dao:Lcom/amazon/kindle/content/dao/IGroupContentDAO;

    .line 96
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v6

    move-object v3, p4

    move-object/from16 v4, p5

    move-object v5, v1

    move-object/from16 v7, p10

    .line 95
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/content/dao/IGroupContentDAO;->getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v2

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 98
    new-instance v3, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;

    move-object/from16 v4, p6

    invoke-direct {v3, v8, v2, v1, v4}, Lcom/amazon/kindle/db/ContentGroupMergeSortCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/amazon/kindle/db/OrderBy;Lcom/amazon/kindle/content/dao/ResultsLimit;)V

    return-object v3

    .line 99
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 100
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 103
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_2
    move-object/from16 v4, p6

    move-object/from16 v10, p9

    .line 109
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 108
    invoke-interface/range {v2 .. v10}, Lcom/amazon/kindle/content/ILibraryService;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method
