.class public Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;
.super Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;
.source "SeriesDetailRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;
    }
.end annotation


# instance fields
.field private groupId:Ljava/lang/String;

.field private final seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LibraryItemsRecyclerFragment;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/kcp/library/SeriesDetailHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getLibraryFragmentClientProxy()Lcom/amazon/kcp/library/fragments/LibraryFragmentClientProxy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/SeriesDetailHelper;-><init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    return-void
.end method

.method public static final synthetic access$getSeriesDetailHelper$p(Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;)Lcom/amazon/kcp/library/SeriesDetailHelper;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->seriesDetailHelper:Lcom/amazon/kcp/library/SeriesDetailHelper;

    return-object p0
.end method

.method private final addHeader()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getRecyclerAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment$SeriesDetailHeader;-><init>(Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->addHeader(Lcom/amazon/kcp/library/RecyclerHeader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected badgeSource()Lcom/amazon/kcp/cover/badge/BadgeSource;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/cover/badge/BadgeSource;->SERIES_DETAIL:Lcom/amazon/kcp/cover/badge/BadgeSource;

    return-object v0
.end method

.method protected configureGrid()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->addHeader()V

    .line 24
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureGrid()V

    return-void
.end method

.method protected configureList(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->addHeader()V

    const/4 p1, 0x0

    .line 19
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->configureList(Z)V

    return-void
.end method

.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCountProvider()Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/SeriesDetailRecyclerFragment;->groupId:Ljava/lang/String;

    return-void
.end method
