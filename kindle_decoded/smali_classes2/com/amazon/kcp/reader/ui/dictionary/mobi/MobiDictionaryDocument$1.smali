.class Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;
.super Ljava/lang/Object;
.source "MobiDictionaryDocument.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->createDefinitionView(Landroid/content/Context;Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/android/docviewer/KindleDocDefinitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/android/docviewer/KindleDocDefinitionView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$controller:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

.field final synthetic val$dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$controller:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/android/docviewer/KindleDocDefinitionView;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    new-instance v7, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$dictionaryResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->executorService:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->val$controller:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    return-object v7

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dictionary available to get the definition view"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    iget-object v2, v2, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 153
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 152
    :goto_0
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument$1;->call()Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    move-result-object v0

    return-object v0
.end method
