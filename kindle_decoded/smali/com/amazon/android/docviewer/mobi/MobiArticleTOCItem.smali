.class public final Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;
.super Ljava/lang/Object;
.source "MobiArticleTOCItem.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/IArticleTOCItem;


# static fields
.field private static final OFFSET_FOR_MARGINAL_ERRORS:I = 0x64


# instance fields
.field private final mArticleThumbnails:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_author:Ljava/lang/String;

.field private final m_description:Ljava/lang/String;

.field private final m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_position:I

.field private final m_section:Lcom/amazon/nwstd/toc/ISectionTOCItem;

.field private m_thumbnailImageId:Ljava/lang/String;

.field private final m_title:Ljava/lang/String;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/nwstd/toc/ISectionTOCItem;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 83
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_section:Lcom/amazon/nwstd/toc/ISectionTOCItem;

    .line 84
    invoke-virtual {p3}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_title:Ljava/lang/String;

    const-string p1, "description"

    .line 85
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_description:Ljava/lang/String;

    const-string p1, "author"

    .line 86
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_author:Ljava/lang/String;

    const-string/jumbo p1, "mastheadImage"

    .line 87
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getStringFromTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_thumbnailImageId:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getIntFromTag(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    if-ltz p2, :cond_0

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_thumbnailImageId:Ljava/lang/String;

    .line 98
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_position:I

    .line 99
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    .line 100
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->mArticleThumbnails:Ljava/util/SortedSet;

    return-void
.end method


# virtual methods
.method addFragmentToReplicaMap(Lcom/amazon/kindle/krf/KRF/Reader/Position;Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public computePageNumberToPositionMap(Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/ITOCItem$PageNumberCalcEvent;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 172
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 173
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBookEndPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getPageNumberCalculator()Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lcom/amazon/android/docviewer/mobi/PageNumberCalculator;->schedulePageNumberCalculation(Lcom/amazon/android/docviewer/ITOCItem;ILcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_description:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getImage()Lcom/amazon/android/docviewer/ImageProvider;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_thumbnailImageId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getImageFromImageId(Ljava/lang/String;)Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_position:I

    return v0
.end method

.method public getRelatedReplicaPageId(I)Ljava/lang/String;
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 158
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-gt v3, p1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 160
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 166
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSection()Lcom/amazon/nwstd/toc/ISectionTOCItem;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_section:Lcom/amazon/nwstd/toc/ISectionTOCItem;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public gotoLocation()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_position:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_title:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_thumbnailImageId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;->m_fragmentToReplicaPageIdMap:Ljava/util/SortedMap;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Article: Title=%s, Position=%d, ThumbnailId=%s, PageMap=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
