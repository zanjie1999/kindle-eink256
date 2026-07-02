.class public Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;
.super Ljava/lang/Object;
.source "PdfObjectSelector.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IObjectSelector;


# static fields
.field private static final NO_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field m_annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field private m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private final m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

.field m_refDocViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

.field private m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private m_selectedNoteIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDocViewer;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_refDocViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    .line 33
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 34
    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedNoteIndex:I

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method

.method private shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 2

    .line 125
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector$1;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public canPerformActionAt(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;III)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getArea(III)Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAnnotationArea(III)Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getArea(III)Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    move-result-object p1

    return-object p1
.end method

.method public getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasSelectableObjects()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isDoubleTapObjectSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedNoteIndex:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v0

    .line 102
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedNoteIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    .line 103
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_refDocViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->openAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v1

    .line 107
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    if-eqz p1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v1

    .line 113
    :cond_1
    sget-object p1, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t find the annotation selected by the user to popup an edit box!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_3

    .line 116
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    if-eqz p1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public selectAt(III)Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getArea(III)Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 81
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object p1

    .line 82
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 83
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p3, :cond_0

    .line 84
    iput v1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedNoteIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-virtual {p3, p1, p2, v1}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->getHighlight(IIZ)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method public selectNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public selectNone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedNoteIndex:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void
.end method

.method public selectPrevious()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setHighlightSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfObjectSelector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    return-void
.end method
