.class Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;
.super Ljava/lang/Object;
.source "ObjectSelectionLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 260
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->isDismissButtonVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 262
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 264
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 268
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColorHighlightProperties(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v2

    .line 269
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    const/4 p1, 0x0

    .line 270
    invoke-interface {v0, v2, p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->onHighlightButtonClicked(Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;Z)V

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    :cond_1
    return-void
.end method
