.class Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

.field final synthetic val$mPopupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$note:Lcom/amazon/kcp/reader/Note;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter$9;Lcom/amazon/kcp/reader/Note;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->val$note:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->val$mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 922
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 923
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object v1, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$noteListItem:Landroid/view/View;

    iget-object v0, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->val$note:Lcom/amazon/kcp/reader/Note;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNote(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 924
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->val$mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 925
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "NotebookAnnotationAction"

    const-string v1, "AnnotationActionDeleteBookmark"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$2;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget v0, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method
