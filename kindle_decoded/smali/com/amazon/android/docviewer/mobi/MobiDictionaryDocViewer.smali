.class public Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;
.super Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
.source "MobiDictionaryDocViewer.java"


# instance fields
.field private dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/android/docviewer/MobiKindleDocViewerFactory$KindleDocumentProvider;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    .line 25
    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_document:Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDictionaryDocument;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IKindleDocument;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    sget p2, Lcom/amazon/kindle/dcm/R$bool;->enable_readingprogress_waypoints_for_dictionary:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->m_waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDocument()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->closeDocument()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    return-void
.end method

.method public search(Ljava/lang/String;)I
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "en-US"

    .line 44
    :cond_0
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->alterSelected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDictionaryDocViewer;->dictionaryDocument:Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    invoke-interface {v1, p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getFirstPositionId()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
