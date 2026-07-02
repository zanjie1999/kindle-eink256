.class public Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;
.super Lcom/amazon/kindle/rendering/KRIFDocViewer;
.source "KRIFDictionaryDocViewer.java"


# instance fields
.field private dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFDocViewer;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/KRFBook;)V

    .line 28
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;-><init>(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    return-void
.end method


# virtual methods
.method public closeDocument()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->closeDocument()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    return-void
.end method

.method public search(Ljava/lang/String;)I
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "en-US"

    .line 39
    :cond_0
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->alterSelected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/amazon/android/docviewer/yj/KRIFDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    invoke-interface {v1, p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getFirstPositionId()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
