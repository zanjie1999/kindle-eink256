.class public final Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;
.super Ljava/lang/Object;
.source "MobiReplicaPageItem.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/IReplicaPageItem;


# instance fields
.field private m_articleblocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/toc/IArticleBlocks;",
            ">;"
        }
    .end annotation
.end field

.field private m_crossReplicaLink:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/nwstd/toc/ICrossReplicaLink;",
            ">;"
        }
    .end annotation
.end field

.field private final m_fragmentPosition:I

.field private m_hasNoTarget:Z

.field private m_imageId:Ljava/lang/String;

.field private final m_pageIdentifier:Ljava/lang/String;

.field private final m_position:I

.field private m_ratio:F

.field private m_thumbnailId:Ljava/lang/String;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;IZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    const-string/jumbo p1, "pageNumber"

    .line 41
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_pageIdentifier:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_position:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_articleblocks:Ljava/util/ArrayList;

    .line 44
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_hasNoTarget:Z

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_ratio:F

    const-string/jumbo p1, "page"

    .line 47
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_imageId:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 51
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getIntFromTag(Ljava/lang/String;)J

    move-result-wide p3

    long-to-int p1, p3

    if-ltz p1, :cond_0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_imageId:Ljava/lang/String;

    :cond_0
    const-string/jumbo p1, "page-thumbnail"

    .line 57
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_thumbnailId:Ljava/lang/String;

    if-nez p3, :cond_1

    .line 61
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getIntFromTag(Ljava/lang/String;)J

    move-result-wide p3

    long-to-int p1, p3

    if-ltz p1, :cond_1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_thumbnailId:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getNodeClass()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->ReplicaPageWithoutTarget:Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mobi/MobiPeriodicalTOC$TOCNodeName;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_fragmentPosition:I

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_fragmentPosition:I

    :goto_0
    return-void
.end method

.method private getImage_()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_imageId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getThumbnailImage_()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_thumbnailId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addArticleBlocks(Lcom/amazon/nwstd/toc/IArticleBlocks;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_articleblocks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_articleblocks:Ljava/util/ArrayList;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_articleblocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCrossReplicaLink(Lcom/amazon/nwstd/toc/ICrossReplicaLink;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_crossReplicaLink:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_crossReplicaLink:Ljava/util/ArrayList;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_crossReplicaLink:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computePageNumberToPositionMap(Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getArticleBlocks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/nwstd/toc/IArticleBlocks;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_articleblocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArticleFragmentPosition()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_fragmentPosition:I

    return v0
.end method

.method public getCrossReplicaLink()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/nwstd/toc/ICrossReplicaLink;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_crossReplicaLink:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getImage()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->getImage_()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    return-object v0
.end method

.method public getImageRatio()F
    .locals 3

    .line 151
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_ratio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getKrfKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getKrfKindleDocument()Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_imageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;->createImage(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_ratio:F

    .line 156
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;->delete()V

    .line 159
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_ratio:F

    return v0
.end method

.method public getPageIdentifier()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_pageIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_position:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->getThumbnailImage_()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoLocation()V
    .locals 0

    return-void
.end method

.method public hasNoTarget()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_hasNoTarget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 183
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_imageId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_thumbnailId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_pageIdentifier:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiReplicaPageItem;->m_fragmentPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ReplicaPage: Position=%d, ImageId=%s, ThumbnailId=%s, PageNum=%s, Fragment=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
