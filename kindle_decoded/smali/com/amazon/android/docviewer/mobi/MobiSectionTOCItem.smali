.class public final Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;
.super Ljava/lang/Object;
.source "MobiSectionTOCItem.java"

# interfaces
.implements Lcom/amazon/nwstd/toc/ISectionTOCItem;


# instance fields
.field private final m_articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IArticleTOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_position:I

.field private final m_title:Ljava/lang/String;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_articles:Ljava/util/List;

    .line 46
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_title:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_position:I

    return-void
.end method


# virtual methods
.method public addArticle(Lcom/amazon/android/docviewer/mobi/MobiArticleTOCItem;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_articles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/nwstd/toc/IArticleTOCItem;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_articles:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_position:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public gotoLocation()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiSectionTOCItem;->m_position:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    return-void
.end method
