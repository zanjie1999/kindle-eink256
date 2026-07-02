.class public Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;
.super Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;
.source "KRIFDictionaryDocument.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;-><init>()V

    .line 39
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->initializeDictionary()V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->initLookup(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem initializing dictionary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;-><init>()V

    .line 39
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->TAG:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 98
    invoke-static {p1}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary(Lcom/amazon/krf/platform/KRFBook;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->initLookup(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem initializing dictionary from KRFBook "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initializeDictionary()V
    .locals 8

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 64
    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v4, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {v0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper;->getContainersAndVouchers(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/Set;)Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->getContainers()Ljava/util/List;

    move-result-object v7

    .line 72
    invoke-virtual {v0}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->getVouchers()Ljava/util/List;

    move-result-object v6

    .line 80
    invoke-virtual {v1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getAccountSecrets()[Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 81
    invoke-virtual {v1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v5

    const-string v3, ""

    .line 79
    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/dictionary/DictionaryStore;->initializeDictionary(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    return-void
.end method


# virtual methods
.method public createDefinitionView(Landroid/content/Context;Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/android/docviewer/KindleDocDefinitionView;
    .locals 8

    .line 108
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    sget v5, Lcom/amazon/kindle/dcm/R$integer;->yj_extra_line_spacing_definition_popup:I

    .line 113
    new-instance v7, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-object v0, v7

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;ILcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    return-object v7

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No dictionary available to get the definition view"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/yj/KRIFDictionaryDocument;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 117
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p3

    .line 116
    :goto_0
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method
