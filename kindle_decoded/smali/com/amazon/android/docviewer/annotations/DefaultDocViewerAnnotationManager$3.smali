.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$annotationType:I

.field final synthetic val$onlyConsiderAnnotationStart:Z

.field final synthetic val$range:Lcom/amazon/android/docviewer/IPositionRange;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;IZLcom/amazon/android/docviewer/IPositionRange;)V
    .locals 0

    .line 944
    iput p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$annotationType:I

    iput-boolean p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$onlyConsiderAnnotationStart:Z

    iput-object p4, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$range:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 948
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    iget v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$annotationType:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$onlyConsiderAnnotationStart:Z

    if-eqz v0, :cond_0

    .line 955
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$3;->val$range:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
