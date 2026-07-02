.class public abstract Lcom/amazon/android/docviewer/BaseChapterTOCItem;
.super Ljava/lang/Object;
.source "BaseChapterTOCItem.java"

# interfaces
.implements Lcom/amazon/android/docviewer/INodeChapterTOCItem;


# instance fields
.field private final m_depth:I

.field protected final m_description:Ljava/lang/String;

.field private final m_parent:Lcom/amazon/android/docviewer/INodeChapterTOCItem;

.field protected final m_position:I

.field protected m_thumbnail:Landroid/graphics/Bitmap;

.field protected final m_title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/INodeChapterTOCItem;Ljava/lang/String;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_parent:Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    .line 29
    iput-object p2, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_title:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Lcom/amazon/android/docviewer/INodeChapterTOCItem;->getDepth()I

    move-result p1

    add-int/2addr p2, p1

    :cond_0
    iput p2, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_depth:I

    .line 32
    iput-object p4, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_thumbnail:Landroid/graphics/Bitmap;

    .line 33
    iput-object p5, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_description:Ljava/lang/String;

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

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDepth()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_depth:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/amazon/android/docviewer/INodeChapterTOCItem;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_parent:Lcom/amazon/android/docviewer/INodeChapterTOCItem;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_position:I

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/android/docviewer/BaseChapterTOCItem;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public gotoLocation()V
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
