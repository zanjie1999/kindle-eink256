.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getGraphicalHighlightsCoveredOrCoveringRange(Lcom/amazon/android/docviewer/IPositionRange;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field final synthetic val$covering:Z

.field final synthetic val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/android/docviewer/IPositionRange;Z)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    iput-boolean p3, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->val$covering:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->val$positionRange:Lcom/amazon/android/docviewer/IPositionRange;

    .line 1218
    iget-object v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->this$0:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-static {v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->access$200(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->createPositionRange(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    .line 1219
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$9;->val$covering:Z

    if-eqz v1, :cond_0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 1224
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result p1

    return p1
.end method
