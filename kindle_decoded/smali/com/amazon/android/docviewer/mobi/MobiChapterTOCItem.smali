.class final Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;
.super Lcom/amazon/android/docviewer/BaseChapterTOCItem;
.source "MobiChapterTOCItem.java"


# instance fields
.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/INodeChapterTOCItem;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p3

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/BaseChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/INodeChapterTOCItem;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;Lcom/amazon/android/docviewer/INodeChapterTOCItem;)V
    .locals 1

    .line 24
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->positionToIntPosition(Lcom/amazon/kindle/krf/KRF/Reader/Position;)I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControlNode;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/INodeChapterTOCItem;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 58
    :cond_1
    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;

    .line 60
    iget v1, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_title:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_title:Ljava/lang/String;

    .line 61
    invoke-static {v1, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public gotoLocation()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiChapterTOCItem;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget v1, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->navigateToPosition(I)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    add-int/lit16 v0, v0, 0xd9

    .line 45
    iget-object v1, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_title:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
