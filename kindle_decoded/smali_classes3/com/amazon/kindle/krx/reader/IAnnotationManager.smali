.class public interface abstract Lcom/amazon/kindle/krx/reader/IAnnotationManager;
.super Ljava/lang/Object;
.source "IAnnotationManager.java"


# virtual methods
.method public abstract addAnnotations(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteAnnotations(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/application/IUserAccount;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/application/IUserAccount;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNitroNoteIdOfScribble(Lcom/amazon/kindle/krx/content/KRXIAnnotation;)Ljava/lang/String;
.end method
