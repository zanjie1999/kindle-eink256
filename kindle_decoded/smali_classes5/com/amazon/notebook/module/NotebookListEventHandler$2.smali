.class Lcom/amazon/notebook/module/NotebookListEventHandler$2;
.super Ljava/lang/Object;
.source "NotebookListEventHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookListEventHandler;->animateRemoval(Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field final synthetic val$highlightAnnotation:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$highlightView:Landroid/view/View;

.field final synthetic val$listAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$noteAnnotation:Lcom/amazon/kcp/reader/Note;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookListEventHandler;Lcom/amazon/kcp/reader/Note;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$highlightAnnotation:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$highlightView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$listAdapter:Landroid/widget/ArrayAdapter;

    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$noteAnnotation:Lcom/amazon/kcp/reader/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$listAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$noteAnnotation:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 266
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$highlightAnnotation:Lcom/amazon/kcp/reader/Note;

    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6

    .line 254
    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$highlightAnnotation:Lcom/amazon/kcp/reader/Note;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$highlightView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->this$0:Lcom/amazon/notebook/module/NotebookListEventHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookListEventHandler$2;->val$listAdapter:Landroid/widget/ArrayAdapter;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/notebook/module/NotebookListEventHandler;->access$600(Lcom/amazon/notebook/module/NotebookListEventHandler;Landroid/view/View;Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Lcom/amazon/kcp/reader/Note;)V

    :cond_0
    return-void
.end method
