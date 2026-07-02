.class Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;
.super Ljava/lang/Object;
.source "WordWiseSynchronizationManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlossDictionaryUrlDownloadRequest"
.end annotation


# instance fields
.field dictionaryDownloadResponseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

.field dictionaryId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 3

    .line 735
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?eid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&deviceTypeId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    .line 742
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getLemmaLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p5}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getDefinitionLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "&languagePair=%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    .line 744
    invoke-virtual {p5}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->dictionaryId:Ljava/lang/String;

    .line 745
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " deviceTypeId="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " dictId="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->dictionaryId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    new-instance p2, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$1000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Z

    move-result p1

    invoke-direct {p2, p3, p1, p5}, Lcom/amazon/kcp/wordwise/download/DictionaryURlWebRequestResponseHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->dictionaryDownloadResponseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getAuthType()Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;
    .locals 1

    .line 781
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;->ADP:Lcom/amazon/kindle/krx/download/IKRXDownloadManager$AuthenticationType;

    return-object v0
.end method

.method public getBody()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-static {v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->dictionaryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->dictionaryDownloadResponseHandler:Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
