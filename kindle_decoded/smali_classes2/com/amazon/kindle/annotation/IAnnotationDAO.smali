.class public interface abstract Lcom/amazon/kindle/annotation/IAnnotationDAO;
.super Ljava/lang/Object;
.source "IAnnotationDAO.java"


# virtual methods
.method public abstract addSidecarRequest(Ljava/lang/String;)V
.end method

.method public abstract deleteAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
.end method

.method public abstract deleteAnnotations(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract deleteSidecarRequest(Ljava/lang/String;)V
.end method

.method public abstract getGHLsWithInvalidShortPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGHLsWithLongPos(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract incSidecarDownloadAttempts(Ljava/lang/String;)I
.end method

.method public abstract insertAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)J
.end method

.method public abstract insertAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/sync/AnnotationExport;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract isSidecarRequested(Ljava/lang/String;)Z
.end method

.method public abstract readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAnnotation(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)I
.end method

.method public abstract updateAnnotations(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateBookId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
