.class Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;
.super Ljava/lang/Object;
.source "NotebookShareHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    instance-of v0, p1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    iget-object v0, v0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->onSelectionListener:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

    move-object v1, p1

    check-cast v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-interface {v0, v1}, Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;->onSelection(Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;)V

    .line 66
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Clicked"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NotebookExport"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
