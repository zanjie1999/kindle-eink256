.class public Lcom/amazon/kindle/krx/content/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"

# interfaces
.implements Lcom/amazon/kindle/krx/content/KRXIAnnotation;


# instance fields
.field private annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "annotation cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/util/AnnotationsUtil;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    return-object v0
.end method

.method public getBegin()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getBookText()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getPos()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public getUserText()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/Annotation;->annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
