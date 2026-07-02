.class public Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;
.super Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;
.source "LargeLibraryRefineMenuAdapter.java"


# instance fields
.field private final accountId:Ljava/lang/String;

.field private final countListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            "Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;",
            ">;"
        }
    .end annotation
.end field

.field private final inlineFilterLeafName:Ljava/lang/String;

.field private libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;)V

    .line 26
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->countListenerMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 39
    iput-object p4, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 40
    iput-object p5, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->inlineFilterLeafName:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->accountId:Ljava/lang/String;

    return-void
.end method

.method private modelFilter(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 71
    new-instance v7, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v7}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelFilterWithArguments(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->inlineFilterLeafName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithInlineFilterLeafName(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p1

    return-object p1
.end method

.method private static shouldForceDownloadedFilter(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Z
    .locals 2

    .line 51
    sget-object v0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$2;->$SwitchMap$com$amazon$kindle$krx$library$LibraryGroupType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->countListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 157
    iget-object v2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v3, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setChildViewProperties(IILcom/amazon/kcp/widget/LibraryFilterItemView;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v0, p3

    .line 76
    invoke-virtual/range {p0 .. p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->setItemTitleAndLabel(Lcom/amazon/kcp/widget/LibraryFilterItemView;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 79
    iget-object v2, v8, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 80
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemIdSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 81
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    .line 83
    iget-object v2, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->countListenerMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    if-eqz v2, :cond_0

    .line 85
    iget-object v3, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v4, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->accountId:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->removeContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    .line 88
    :cond_0
    new-instance v10, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;

    invoke-direct {v10, p0, v0, v1}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;-><init>(Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;Lcom/amazon/kcp/widget/LibraryFilterItemView;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 118
    iget-object v0, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->countListenerMap:Ljava/util/Map;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 122
    iget-object v3, v8, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 123
    invoke-virtual {v4}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v5, v8, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v4}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIdsForGroup(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildOwnershipSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 131
    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildProgressSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 132
    invoke-static {v2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAudibleSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 133
    invoke-static {v2, v3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildSampleSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 134
    invoke-static {v2, v5}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildCategorySet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 135
    iget-object v6, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-static {v6}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->shouldForceDownloadedFilter(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Downloaded"

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 136
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAccountTypeSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v7

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 140
    iget-object v2, v8, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    new-instance v11, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;

    invoke-direct {v11}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;-><init>()V

    invoke-interface {v2, v11}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/CounterArguments;

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {v2}, Lcom/amazon/kcp/library/CounterArguments;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v11

    .line 144
    invoke-virtual {v2}, Lcom/amazon/kcp/library/CounterArguments;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 147
    :cond_5
    iget-object v12, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    iget-object v13, v8, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->accountId:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    const/4 v14, 0x0

    .line 149
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v14, Lcom/amazon/kindle/observablemodel/ModelContent;

    invoke-direct {v14}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>()V

    invoke-static {v0, v2, v11, v14}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v14

    move-object v0, p0

    move-object v2, v3

    move-object v3, v6

    move-object v6, v7

    move-object v7, v9

    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->modelFilter(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    move-object v9, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v0

    move-object v14, v1

    .line 147
    invoke-virtual/range {v9 .. v14}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method

.method public setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->libraryGroupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 171
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
