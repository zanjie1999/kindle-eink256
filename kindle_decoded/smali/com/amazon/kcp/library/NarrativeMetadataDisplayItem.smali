.class public final Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "NarrativeMetadataDisplayItem.kt"

# interfaces
.implements Lcom/amazon/kcp/library/IGroupDisplayItem;


# instance fields
.field private coverBookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final displayTitle:Ljava/lang/String;

.field private filteredAsinCount:I

.field private final formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

.field private final formulaIn:Lcom/amazon/kcp/integrator/LibraryModelFormula;

.field private groupAsin:Ljava/lang/String;

.field private final itemID:Lcom/amazon/kindle/observablemodel/ItemID;

.field private originType:Ljava/lang/String;

.field private final originTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/integrator/LibraryModelFormula;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;",
            ")V"
        }
    .end annotation

    const-string v0, "itemID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "originTypes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->formulaIn:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iput-object p2, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p3, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->displayTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->originTypes:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 38
    sget-object p1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 39
    invoke-static {p4}, Lcom/amazon/kcp/util/LibraryUtils;->getPreferredOriginTypeForNarrative(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->originType:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->formulaIn:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    if-eqz p1, :cond_0

    .line 46
    iget-object p2, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/integrator/LibraryModelFormula;->modelFormulaWithParentGroupID(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/integrator/LibraryModelFormula;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lcom/amazon/kcp/integrator/LibraryModelFormula;->Companion:Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;

    invoke-virtual {p1}, Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;->emptyModelFormula()Lcom/amazon/kcp/integrator/LibraryModelFormula;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/amazon/kcp/integrator/LibraryModelFormula;->modelFormulaWithAllContentCategories()Lcom/amazon/kcp/integrator/LibraryModelFormula;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {p2}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    .line 51
    new-instance p3, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    const/4 p4, 0x0

    .line 52
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x1

    .line 53
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 51
    invoke-direct {p3, p4, p5}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p2, p3}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p2

    const-string p3, "ModelSorting().modelSort\u2026          )\n            )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/integrator/LibraryModelFormula;->modelFormulaWithSorting(Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kcp/integrator/LibraryModelFormula;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/integrator/LibraryModelFormula;->modelFormulaWithParentGroupID(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/integrator/LibraryModelFormula;

    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->formula:Lcom/amazon/kcp/integrator/LibraryModelFormula;

    :goto_0
    return-void
.end method

.method public static final synthetic access$setGroupAsin$p(Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->groupAsin:Ljava/lang/String;

    return-void
.end method

.method private final setGroupAsin(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;->INSTANCE:Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$1;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->groupAsin:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem$setGroupAsin$2;-><init>(Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->groupAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getAsinCount()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->filteredAsinCount:I

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getCollectionItem()Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupItemPosition()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 251
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->ISSUE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object v0
.end method

.method public getItemID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->itemID:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 229
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method

.method public getReadingProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 149
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 129
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public handleClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFalkor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFromOrderedSeries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isKept()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPeriodical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 0

    return-object p0
.end method

.method public setCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    const-string v0, "coverBookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->coverBookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->setGroupAsin(Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method public setFilteredAsinCount(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->filteredAsinCount:I

    return-void
.end method

.method public final setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .locals 1

    const-string/jumbo v0, "readState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeMetadataDisplayItem;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-void
.end method

.method public toKrxBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
