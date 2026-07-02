.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsOverlappingRange(Lcom/amazon/android/docviewer/IPositionRange;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field final synthetic val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;->val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 3

    .line 1068
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$200(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 1069
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$8;->val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPositionRange;->overlaps(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method
