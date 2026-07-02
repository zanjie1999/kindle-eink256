.class public Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;
.super Ljava/lang/Object;
.source "DictionaryDocumentManager.java"


# static fields
.field private static manager:Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

.field private dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;
    .locals 2

    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->manager:Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->manager:Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/KRF4Helper;->loadNativeLibraries()V

    .line 49
    :cond_0
    sget-object v1, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->manager:Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isYjBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    .line 93
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kfx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".kdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "application/x-kfx-ebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized closeCurrentDictionary()V
    .locals 2

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->close()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 103
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 104
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->resetDictionary()V

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->TAG:Ljava/lang/String;

    const-string v1, "Closing current dictionary and reseting in dictionaryStore"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDictionary(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting existing dictionary "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting new dictionary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->closeCurrentDictionary()V

    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->isYjBook(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 87
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->currentDictionaryBookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DictionaryDocumentManager;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
