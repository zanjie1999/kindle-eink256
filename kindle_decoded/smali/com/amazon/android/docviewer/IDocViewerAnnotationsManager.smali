.class public interface abstract Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
.super Ljava/lang/Object;
.source "IDocViewerAnnotationsManager.java"


# virtual methods
.method public abstract addGraphicalHighlight(Lcom/amazon/android/docviewer/IPositionRange;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation
.end method

.method public abstract addHighlight(IIIILjava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation
.end method

.method public abstract addHighlight(IIIILjava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation
.end method

.method public abstract addNote(IIILjava/lang/String;Ljava/util/Map;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation
.end method

.method public abstract addNote(IIILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;"
        }
    .end annotation
.end method

.method public abstract canBookmark()Z
.end method

.method public abstract checkForExistingNote(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkForExistingNote(Lcom/amazon/android/docviewer/IPageElement;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Z
.end method

.method public abstract deleteNoteOnly(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
.end method

.method public abstract editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract editNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getAnnotationAtIndex(I)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getAnnotationsOverlappingRange(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
.end method

.method public abstract getFirstGraphicalHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getGraphicalHighlightsCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/IPositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighlightCoveringArea(Lcom/amazon/android/docviewer/IPositionRange;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getHighlightCoveringPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract getIndex(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
.end method

.method public abstract getNotesInRange(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBookmark()Z
.end method

.method public abstract hasBookmark(II)Z
.end method

.method public abstract hasReadAnnotations()Z
.end method

.method public abstract prepopulateAnnotationText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end method

.method public abstract setAnnotationMetadata(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Ljava/lang/Object;ZZ)Z
.end method

.method public abstract setHasReadAnnotations(Z)V
.end method

.method public abstract startPopulateBookText(Landroid/widget/ArrayAdapter;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopPopulateBookText()V
.end method

.method public abstract toggleBookmark(Ljava/lang/String;Lcom/amazon/kcp/reader/ReaderActivity;)V
.end method

.method public abstract updateAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
.end method

.method public abstract updateGraphicalHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/android/docviewer/IPositionRange;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end method

.method public abstract updateLastPageRead(I)V
.end method
