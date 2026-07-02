.class public Lcom/amazon/kcp/library/SeriesDetailHelper;
.super Ljava/lang/Object;
.source "SeriesDetailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;
    }
.end annotation


# instance fields
.field private final libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    return-void
.end method

.method private static getFalkorOwnerShipCount(Lcom/amazon/kindle/content/GroupMetadata;)I
    .locals 5

    .line 101
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 104
    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getBook(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v2

    :goto_1
    return v2
.end method

.method private static getFalkorStoryOwnershipCountText(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;)Ljava/lang/String;
    .locals 6

    .line 84
    invoke-static {p1}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getFalkorOwnerShipCount(Lcom/amazon/kindle/content/GroupMetadata;)I

    move-result v0

    .line 85
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, p1, :cond_0

    .line 87
    sget v3, Lcom/amazon/kindle/librarymodule/R$plurals;->falkor_story_ownership_count:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 87
    invoke-virtual {p0, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$plurals;->unpublished_falkor_story_ownership_count:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 90
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getOwnershipCountStringWithMultipleEditions(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;
    .locals 6

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, p2, :cond_0

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->series_ownership_count_with_multiple_editions:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-virtual {p0, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->series_ownership_count:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getOwnershipCountText(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getFalkorStoryOwnershipCountText(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/library/SeriesDetailHelper;->shouldShowSeriesHeaderInDetailView(Lcom/amazon/kindle/content/GroupMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getSeriesOwnershipCount(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getOwnershipCountStringWithMultipleEditions(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSeriesOwnershipCount(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;
    .locals 5

    .line 115
    invoke-static {}, Lcom/amazon/kcp/debug/SeriesBindingDebugUtils;->isInJapan()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getSeriesOwnershipCountInJapanPfm(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v0

    .line 117
    sget-object v1, Lcom/amazon/kcp/library/SeriesDetailHelper$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 126
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getOwnershipCountStringWithMultipleEditions(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :cond_1
    sget p1, Lcom/amazon/kindle/librarymodule/R$plurals;->series_ownership_count_omnibus:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$plurals;->series_ownership_count_issues:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_3
    sget p1, Lcom/amazon/kindle/librarymodule/R$plurals;->series_ownership_count_trades:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSeriesOwnershipCountInJapanPfm(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;
    .locals 6

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v0

    .line 134
    sget-object v1, Lcom/amazon/kcp/library/SeriesDetailHelper$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 143
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesDetailHelper;->getOwnershipCountStringWithMultipleEditions(Landroid/content/res/Resources;Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->series_ownership_count_omnibus_jp:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->series_ownership_count_issues_jp:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_2
    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->series_ownership_count_volumes_jp:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static shouldShowSeriesHeaderInDetailView(Lcom/amazon/kindle/content/GroupMetadata;)Z
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/utils/SeriesBindingHelper;->isValidGroupBookType(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public setUpSeriesSecondaryBar(Landroid/view/View;Ljava/lang/String;)Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;
    .locals 2

    .line 49
    new-instance v0, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;

    iget-object v1, p0, Lcom/amazon/kcp/library/SeriesDetailHelper;->libraryFragmentClient:Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/library/SeriesDetailHelper$SecondaryTopBarAsyncTask;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;Landroid/view/View;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    .line 50
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method
