.class public final Lcom/amazon/kcp/utils/AdapterHelperSettings;
.super Ljava/lang/Object;
.source "AdapterHelperSettings.kt"


# instance fields
.field private final currentUserId:Ljava/lang/String;

.field private final groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field private final grouping:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final parent:Lcom/amazon/kindle/observablemodel/ItemID;

.field private final selectedFilterIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sortType:Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "libraryFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFilterIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grouping"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iput-object p2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    iput-object p3, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iput-object p4, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iput-object p5, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    iput-object p6, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p7, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    iget-object v1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupType()Lcom/amazon/kindle/krx/library/LibraryGroupType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    return-object v0
.end method

.method public final getGrouping()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    return-object v0
.end method

.method public final getParent()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    return-object v0
.end method

.method public final getSelectedFilterIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getSortType()Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/amazon/kindle/observablemodel/ItemID;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterHelperSettings(libraryFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedFilterIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->selectedFilterIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sortType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", groupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", grouping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->grouping:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->parent:Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/utils/AdapterHelperSettings;->currentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
