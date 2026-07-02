.class Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;
.super Landroid/os/AsyncTask;
.source "NonLinearSeekerDecoration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTextRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .line 253
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    iget-object v1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->computeDisplayText(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/KindleDoc;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    invoke-static {v0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->access$102(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 287
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBarTextViewsAndSecondaryProgress()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$AsyncTextRetriever;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    invoke-static {v0, p1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->access$102(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBarTextViewsAndSecondaryProgress()V

    :cond_0
    return-void
.end method
