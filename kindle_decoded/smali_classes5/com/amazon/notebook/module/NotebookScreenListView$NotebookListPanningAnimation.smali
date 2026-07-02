.class Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;
.super Lcom/amazon/android/docviewer/pdf/PanningAnimation;
.source "NotebookScreenListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookScreenListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotebookListPanningAnimation"
.end annotation


# instance fields
.field deltaY:F

.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookScreenListView;


# direct methods
.method private constructor <init>(Lcom/amazon/notebook/module/NotebookScreenListView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->this$0:Lcom/amazon/notebook/module/NotebookScreenListView;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;-><init>()V

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->deltaY:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/notebook/module/NotebookScreenListView;Lcom/amazon/notebook/module/NotebookScreenListView$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;-><init>(Lcom/amazon/notebook/module/NotebookScreenListView;)V

    return-void
.end method


# virtual methods
.method protected applyPanningTransformationToView(FF)V
    .locals 1

    .line 167
    iget p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->deltaY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->deltaY:F

    float-to-int p1, p1

    .line 171
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->this$0:Lcom/amazon/notebook/module/NotebookScreenListView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 173
    iget p2, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->deltaY:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->deltaY:F

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->this$0:Lcom/amazon/notebook/module/NotebookScreenListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
