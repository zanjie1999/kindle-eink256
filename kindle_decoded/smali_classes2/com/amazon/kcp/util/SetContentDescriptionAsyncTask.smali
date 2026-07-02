.class public Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;
.super Landroid/os/AsyncTask;
.source "SetContentDescriptionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final downloadProgress:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

.field private final isConsolidated:Z

.field private final libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private final targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->targetView:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 27
    iput-boolean p3, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->isConsolidated:Z

    .line 28
    iput-object p4, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->downloadProgress:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 33
    iget-object p1, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-boolean v0, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->isConsolidated:Z

    iget-object v1, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->downloadProgress:Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/LibraryUtils;->getContentDescription(Lcom/amazon/kcp/library/ILibraryDisplayItem;ZLcom/amazon/kcp/library/ui/IDownloadProgressIndicator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/util/SetContentDescriptionAsyncTask;->targetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
