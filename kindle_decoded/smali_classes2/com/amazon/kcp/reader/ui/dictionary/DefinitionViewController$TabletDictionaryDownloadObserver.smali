.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletDictionaryDownloadObserver"
.end annotation


# instance fields
.field protected final dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

.field protected final progressBar:Landroid/widget/ProgressBar;

.field protected final selectedText:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->selectedText:Ljava/lang/String;

    .line 1258
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->progressBar:Landroid/widget/ProgressBar;

    .line 1259
    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    return-void
.end method

.method private handleDownloadErrorPopup(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 3

    .line 1296
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1299
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v1, :cond_1

    .line 1300
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v1, :cond_1

    .line 1301
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v1, :cond_1

    .line 1302
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v1, :cond_2

    .line 1304
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadErrorActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1306
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "book_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "error_reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "remove_download_on_cancel"

    .line 1308
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 1311
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1312
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 1313
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1314
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onDownloadAdded(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    return-void
.end method

.method public onDownloadComplete(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    .line 1265
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->stopTrackingDownload()V

    .line 1267
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadError(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->stopTrackingDownload()V

    .line 1281
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->handleDownloadErrorPopup(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 1283
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDownloadProgressChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 6

    .line 1366
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->dictLocator:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 1367
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1369
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getPercentage()I

    move-result p1

    .line 1373
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/dcm/R$string;->dictionary_downloading_progress:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$5;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDownloadStateChanged(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    .line 1345
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    .line 1346
    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/ContentState;->isLocal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p1, v0, :cond_0

    .line 1347
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$4;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLicenseCountError(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    .line 1323
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->stopTrackingDownload()V

    .line 1324
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$3;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
