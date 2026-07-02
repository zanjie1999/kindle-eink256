.class public Lcom/amazon/kindle/krx/reader/BaseAnnotationManager;
.super Ljava/lang/Object;
.source "BaseAnnotationManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IAnnotationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnnotations(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public deleteAnnotations(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAnnotations(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/application/IUserAccount;)Ljava/util/List;
    .locals 0
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

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;
    .locals 0
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

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getNitroNoteIdOfScribble(Lcom/amazon/kindle/krx/content/KRXIAnnotation;)Ljava/lang/String;
    .locals 0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
