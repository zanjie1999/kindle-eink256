.class Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;
.super Ljava/lang/Object;
.source "NotebookClearClippingLimitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 43
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-static {v1}, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->access$000(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-static {v3}, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->access$000(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 46
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-static {v3}, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;->access$000(Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 51
    :cond_0
    invoke-virtual {v2, v6}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->markAnnotationAsUnExported(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v0, v1, v3}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->setPercentExported(Ljava/lang/String;Ljava/lang/String;F)V

    .line 54
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity$1;->this$0:Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
