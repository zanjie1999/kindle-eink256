.class Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;
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

    .line 894
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$note:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 898
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    const-string v0, "AnnotationActionDeleteHighlight"

    const-string v1, "NotebookAnnotationAction"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$400(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 899
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object v4, v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$noteListItem:Landroid/view/View;

    iget-object v3, v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v4, v3, v5, v2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNote(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 900
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 901
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 903
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object v4, v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$noteListItem:Landroid/view/View;

    iget-object v3, v3, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {p1, v4, v3, v5, v2}, Lcom/amazon/notebook/module/NotebookListEventHandler;->deleteNote(Landroid/view/View;Landroid/widget/ArrayAdapter;Lcom/amazon/kcp/reader/Note;Z)V

    .line 904
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->val$mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 905
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9$1;->this$1:Lcom/amazon/notebook/module/NotebookArrayAdapter$9;

    iget v0, v0, Lcom/amazon/notebook/module/NotebookArrayAdapter$9;->val$position:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    return-void
.end method
