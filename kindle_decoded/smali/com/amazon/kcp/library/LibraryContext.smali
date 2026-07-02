.class public Lcom/amazon/kcp/library/LibraryContext;
.super Ljava/lang/Object;
.source "LibraryContext.kt"


# instance fields
.field private final externalItemsQuery:Lcom/amazon/kcp/library/ILibraryItemQuery;

.field private final filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private final inlineFilterGroupName:Ljava/lang/String;

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final libraryType:Ljava/lang/String;

.field private final sortTypePersistKey:Ljava/lang/String;

.field private final tab:Lcom/amazon/kindle/krx/library/LibraryView;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;)V
    .locals 1

    const-string v0, "libraryFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sortTypePersistKey"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineFilterGroupName"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContext;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContext;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContext;->tab:Lcom/amazon/kindle/krx/library/LibraryView;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContext;->libraryType:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContext;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryContext;->sortTypePersistKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryContext;->externalItemsQuery:Lcom/amazon/kcp/library/ILibraryItemQuery;

    iput-object p8, p0, Lcom/amazon/kcp/library/LibraryContext;->inlineFilterGroupName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const-string v0, ""

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 24
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/library/LibraryContext;-><init>(Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/krx/library/LibraryView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getExternalItemsQuery()Lcom/amazon/kcp/library/ILibraryItemQuery;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->externalItemsQuery:Lcom/amazon/kcp/library/ILibraryItemQuery;

    return-object v0
.end method

.method public getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    return-object v0
.end method

.method public final getInlineFilterGroupName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->inlineFilterGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryFilter()Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    return-object v0
.end method

.method public final getLibraryType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->libraryType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortTypePersistKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->sortTypePersistKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->tab:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContext;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final syncFromContext(Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 1

    const-string/jumbo v0, "previousLibraryContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContext;->getFilterStateManager()Lcom/amazon/kcp/library/LibraryFilterStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSerializedState()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->restoreFromSerializedState(Ljava/util/Set;)V

    return-void
.end method
