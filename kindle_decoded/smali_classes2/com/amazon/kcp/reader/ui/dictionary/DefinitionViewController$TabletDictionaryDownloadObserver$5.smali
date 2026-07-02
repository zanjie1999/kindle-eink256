.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

.field final synthetic val$perc:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;I)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iput p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->val$perc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1377
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting progress as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->val$perc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->val$perc:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1379
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
