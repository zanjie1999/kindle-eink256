.class Lcom/amazon/notebook/module/NotebookArrayAdapter$22;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->addColoredHighlightOptions(ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Landroid/view/View;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$annotation:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$colorTitle:Ljava/lang/String;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$position:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iput p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$position:I

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$adapter:Landroid/widget/ArrayAdapter;

    iput-object p5, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$colorTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$textView:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1480
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1481
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$position:I

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$adapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$colorTitle:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$1100(Lcom/amazon/notebook/module/NotebookArrayAdapter;ILcom/amazon/kcp/reader/Note;Landroid/widget/ArrayAdapter;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1482
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotebookAnnotationAction"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1486
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->this$0:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$100(Lcom/amazon/notebook/module/NotebookArrayAdapter;)Lcom/amazon/notebook/module/NotebookListEventHandler;

    move-result-object p1

    iget v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$22;->val$position:I

    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookListEventHandler;->refreshListAndFilter(I)V

    :cond_1
    return-void
.end method
