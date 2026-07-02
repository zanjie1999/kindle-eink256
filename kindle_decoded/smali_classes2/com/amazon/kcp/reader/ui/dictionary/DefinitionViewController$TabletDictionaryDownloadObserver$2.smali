.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->onDownloadError(Lcom/amazon/kindle/services/download/IContentDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->selectedText:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupContents(Ljava/lang/String;Z)Z

    .line 1287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver$2;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
