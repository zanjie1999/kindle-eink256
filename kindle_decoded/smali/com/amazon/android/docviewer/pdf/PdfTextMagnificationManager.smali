.class public final Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;
.super Ljava/lang/Object;
.source "PdfTextMagnificationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PdfTextMagnificationManager"


# instance fields
.field private m_selectedTextMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

.field private m_textMagnifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->close()V

    .line 33
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_selectedTextMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    return-void
.end method

.method public getClickedTextMagnification()Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_selectedTextMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    return-object v0
.end method

.method public isTextMagnificationClicked(Landroid/graphics/PointF;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_textMagnifications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    .line 60
    invoke-virtual {v2, p1}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->isClicked(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;->getPageIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 61
    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTextMagnificationManager;->m_selectedTextMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
