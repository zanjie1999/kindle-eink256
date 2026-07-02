.class Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderKey"
.end annotation


# instance fields
.field filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field originId:Ljava/lang/String;

.field sortType:Lcom/amazon/kcp/library/LibrarySortType;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 513
    instance-of v0, p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    check-cast p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->originId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->originId:Ljava/lang/String;

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 528
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryContentFilter;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 529
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 530
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentCache$LoaderKey;->originId:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method
