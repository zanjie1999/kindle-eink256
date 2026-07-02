.class public Lcom/amazon/kindle/rendering/KRIFBookItem;
.super Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.source "KRIFBookItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;,
        Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;,
        Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookInfoGetter;,
        Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLIPPING_LIMIT:F = 0.1f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apnxFilename:Ljava/lang/String;

.field private appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

.field private clippingLimit:F

.field private continuousScrollReflowableSupported:Z

.field private volatile dbMetadataLoaded:Z

.field private dbMetadataLock:Ljava/lang/Object;

.field private expirationDate:J

.field private fileName:Ljava/lang/String;

.field private genericMetadata:Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

.field private hasContinuousPopupProgression:Z

.field private hasDictionaryLookup:Z

.field private hasGraphicalHighlights:Z

.field private hasPublisherFonts:Z

.field private hasPublisherPanels:Z

.field private hasRecaps:Z

.field private intendedAudience:Lcom/amazon/kindle/model/content/IntendedAudience;

.field private isFixedLayout:Z

.field private isFreeDict:Z

.field private isGenericFixedFormat:Z

.field private isGuidedViewNative:Z

.field private isPageExclusiveLabeling:Z

.field private isTextbook:Z

.field private volatile krfBook:Lcom/amazon/krf/platform/KRFBook;

.field private mbpFilename:Ljava/lang/String;

.field private volatile metadataLoaded:Z

.field private metadataPopulated:Z

.field private orientation:Lcom/amazon/kindle/model/content/BookOrientation;

.field private pageOrientationLocked:Z

.field private primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

.field private readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

.field private sidecarPath:Ljava/lang/String;

.field private supportBEVPFVForComics:Z

.field private ttsAllowed:Ljava/lang/Boolean;

.field private volumeLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lcom/amazon/kindle/rendering/KRIFBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 227
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 99
    new-instance p3, Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p3}, Lcom/amazon/kindle/rendering/BookMetadata;-><init>()V

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    const/4 p3, 0x0

    .line 105
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 108
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->sidecarPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataPopulated:Z

    .line 110
    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    const-wide/16 v1, -0x1

    .line 122
    iput-wide v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->expirationDate:J

    .line 133
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLoaded:Z

    .line 134
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLock:Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 229
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 233
    new-instance p3, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {p3, p2}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAnnotationSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->mbpFilename:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {p0, p3, v0, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getPagenumberSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->apnxFilename:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->sidecarPath:Ljava/lang/String;

    const p1, 0x3dcccccd    # 0.1f

    .line 239
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->clippingLimit:F

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p3, p4}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 99
    new-instance p4, Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p4}, Lcom/amazon/kindle/rendering/BookMetadata;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    const/4 p4, 0x0

    .line 105
    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 108
    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->sidecarPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataPopulated:Z

    .line 110
    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    const-wide/16 v1, -0x1

    .line 122
    iput-wide v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->expirationDate:J

    .line 133
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLoaded:Z

    .line 134
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLock:Ljava/lang/Object;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 192
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p4

    invoke-interface {p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createKRFBook(Lcom/amazon/kindle/model/content/IBookID;Ljava/io/File;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAndroidApplicationController;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 198
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p0, p4, p1, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadMetadataFromKRFBook(Lcom/amazon/krf/platform/KRFBook;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 200
    new-instance p1, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {p1, p3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 201
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAnnotationSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->mbpFilename:Ljava/lang/String;

    .line 202
    iget-object p4, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getPagenumberSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->apnxFilename:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->sidecarPath:Ljava/lang/String;

    const p1, 0x3dcccccd    # 0.1f

    .line 205
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->clippingLimit:F

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/rendering/KRIFBookItem;)Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/krf/platform/Disposable;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateBookType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 2

    if-nez p1, :cond_0

    .line 1049
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1050
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1051
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1052
    :cond_1
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1053
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1054
    :cond_2
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1055
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1056
    :cond_3
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1057
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1058
    :cond_4
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1059
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1060
    :cond_5
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1061
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    return-object p1

    .line 1065
    :cond_6
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported content-type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object p1
.end method

.method private static computeMagazineGeneration(Lcom/amazon/krf/platform/KRFBookInfo;)Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;
    .locals 1

    .line 865
    invoke-interface {p0}, Lcom/amazon/krf/platform/KRFBookInfo;->isMagazine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    invoke-interface {p0}, Lcom/amazon/krf/platform/KRFBookInfo;->isFolioMagazine()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->LEGACY:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->PERIODICALS_V2:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    :goto_0
    return-object p0

    .line 868
    :cond_1
    sget-object p0, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->NONE:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    return-object p0
.end method

.method private computeMimeType(Lcom/amazon/krf/platform/KRFBookInfo;)V
    .locals 3

    .line 875
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    :cond_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Given book mime type is blank; using application/x-kfx-ebook"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/x-kfx-ebook"

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_2

    .line 882
    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->computeMagazineGeneration(Lcom/amazon/krf/platform/KRFBookInfo;)Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;->PERIODICALS_V2:Lcom/amazon/kindle/rendering/KRIFBookItem$MagazineGeneration;

    if-ne p1, v1, :cond_2

    .line 883
    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 884
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    const-string v0, "application/x-kfx-periodicals-v2-magazine"

    iput-object v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 886
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iput-object v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->mimeType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private createKRFBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 4

    .line 249
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->appController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createKRFBook(Lcom/amazon/kindle/model/content/IBookID;Ljava/io/File;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAndroidApplicationController;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 253
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create KRFBook"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private createKRFBook(Lcom/amazon/kindle/model/content/IBookID;Ljava/io/File;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kcp/application/IAndroidApplicationController;)Lcom/amazon/krf/platform/KRFBook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/KRFException;
        }
    .end annotation

    .line 1100
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 1108
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getBookIdForMainContentFile(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1114
    instance-of p3, p1, Lcom/amazon/kindle/model/content/SideloadBookID;

    if-nez p3, :cond_1

    .line 1120
    sget-object p3, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-static {p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    .line 1121
    new-instance p4, Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-direct {p4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1122
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1123
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-static {p1, p3, p4}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper;->getContainersAndVouchers(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/Set;)Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;

    move-result-object p1

    .line 1128
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->getContainers()Ljava/util/List;

    move-result-object p4

    .line 1129
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFBookItemHelper$ContainersAndVouchers;->getVouchers()Ljava/util/List;

    move-result-object v0

    .line 1132
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecurity()Lcom/mobipocket/android/library/reader/AndroidSecurity;

    move-result-object p1

    .line 1134
    invoke-virtual {p1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getAccountSecrets()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 1135
    invoke-virtual {p1}, Lcom/mobipocket/android/library/reader/AndroidSecurity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    .line 1134
    invoke-static {p2, p3, p1, v0, p4}, Lcom/amazon/krf/platform/KRF;->openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p1

    return-object p1
.end method

.method private disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V
    .locals 1

    .line 1526
    iget-boolean v0, p1, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->isSelfOwn:Z

    if-eqz v0, :cond_0

    .line 1527
    iget-object p1, p1, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    :cond_0
    return-void
.end method

.method private disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1534
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/Disposable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1536
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "Unable to dispose"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private extractAuthorPronunciation(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private extractClippingLimit(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/Float;
    .locals 1

    if-eqz p1, :cond_0

    .line 1341
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getClippingLimit()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private extractParentAsin(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, "parent_asin"

    .line 1331
    invoke-interface {p1, v0}, Lcom/amazon/krf/platform/KRFBookInfo;->createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractTitlePronunciation(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private extractVolumeLabel(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, "volume_label"

    .line 1335
    invoke-interface {p1, v0}, Lcom/amazon/krf/platform/KRFBookInfo;->createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnnotationSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1361
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1363
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAsin()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    .line 1362
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getEncryptedBookSettings(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getBookOrientationFromKRFOrientation(Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;)Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    if-eqz p1, :cond_3

    .line 1383
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGuidedViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1388
    :cond_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$BookOrientationLock:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1394
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1

    .line 1392
    :cond_1
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->PORTRAIT:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1

    .line 1390
    :cond_2
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->LANDSCAPE:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1

    .line 1385
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object p1
.end method

.method private getBookReadingDirectionFromKRFDirection(Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;)Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    if-nez p1, :cond_0

    .line 1401
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1

    .line 1404
    :cond_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 1412
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1

    .line 1410
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1

    .line 1407
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object p1
.end method

.method private getContentOwnershipTypeFromKRFString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 2

    .line 1345
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 1347
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    invoke-static {p1}, Lcom/amazon/kindle/model/content/ContentOwnershipType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private getCurrentReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 507
    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLastPositionRead()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createPlatformPosition(I)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    if-nez v1, :cond_0

    .line 510
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$ReadingMode;->BOOK_DEFAULT:Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/KRFBook;->getReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method private getIsPageExclusiveLabelingFromKRF(Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1441
    :cond_0
    sget-object v1, Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;->kUserVisibleLabelingPageExclusive:Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 270
    :goto_0
    new-instance v2, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;-><init>(Lcom/amazon/krf/platform/KRFBook;ZLcom/amazon/kindle/rendering/KRIFBookItem$1;)V

    return-object v2
.end method

.method private static getKRFLandmarkType(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1564
    :cond_0
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$kindle$krx$reader$IBookNavigator$BookLandmarkType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    return-object v0

    .line 1570
    :cond_1
    sget-object p0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeTOC:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-object p0

    .line 1568
    :cond_2
    sget-object p0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeSRL:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-object p0

    .line 1566
    :cond_3
    sget-object p0, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeCoverPage:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    return-object p0
.end method

.method private getPagenumberSidecarFilepath(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;Lcom/amazon/kindle/io/IFileConnectionFactory;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1373
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1375
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getAsin()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    .line 1374
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;->getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getPrimaryWritingModeFromKRFDirection(Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    if-nez p1, :cond_0

    .line 1419
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1

    .line 1422
    :cond_0
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 1432
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1

    .line 1430
    :cond_1
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1

    .line 1428
    :cond_2
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1

    .line 1426
    :cond_3
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1

    .line 1424
    :cond_4
    sget-object p1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object p1
.end method

.method private isContinuousScrollReflowableSupported()Z
    .locals 1

    .line 948
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 949
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->continuousScrollReflowableSupported:Z

    return v0
.end method

.method private isGuidedViewNativeSupported()Z
    .locals 1

    .line 957
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 958
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGuidedViewNative:Z

    return v0
.end method

.method private isGuidedViewSupported()Z
    .locals 2

    .line 940
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadKRFBookMetadata()V
    .locals 4

    .line 1076
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1077
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataLoaded:Z

    .line 1078
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 1079
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v1, :cond_0

    .line 1081
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    iget-object v2, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadMetadataFromKRFBook(Lcom/amazon/krf/platform/KRFBook;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 1085
    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private loadMetadataFromKRFBook(Lcom/amazon/krf/platform/KRFBook;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1153
    :cond_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    .line 1155
    monitor-enter p0

    .line 1156
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataPopulated:Z

    if-nez v1, :cond_1

    .line 1157
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->populateMetadata(Lcom/amazon/krf/platform/KRFBookInfo;Ljava/io/File;)V

    .line 1159
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_2

    .line 1162
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    goto :goto_0

    .line 1164
    :cond_2
    iget-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v1, p3, Lcom/amazon/kindle/rendering/BookMetadata;->asin:Ljava/lang/String;

    iget-object p3, p3, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    .line 1165
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-wide v2, v2, Lcom/amazon/kindle/rendering/BookMetadata;->fileLastModified:J

    .line 1164
    invoke-static {v1, p3, p2, v2, v3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->createBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 1169
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1171
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getCurrentReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object p2

    .line 1172
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/amazon/krf/platform/KRFBookInfo;->getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p3

    .line 1173
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/krf/platform/KRFBookInfo;->getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_1

    .line 1177
    :cond_3
    sget-object p1, Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;->kLandmarkTypeCoverPage:Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;)Lcom/amazon/krf/platform/Position;

    move-result-object p3

    .line 1178
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getMaxPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    :goto_1
    const-wide/16 v1, 0x0

    if-eqz p3, :cond_4

    .line 1182
    invoke-interface {p3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p2

    goto :goto_2

    :cond_4
    move-wide p2, v1

    :goto_2
    long-to-int p3, p2

    const/4 p2, 0x0

    .line 1183
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1184
    invoke-direct {p0, p3}, Lcom/amazon/kindle/rendering/KRIFBookItem;->setStartingPositionInternal(I)V

    if-eqz p1, :cond_5

    .line 1186
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v3

    goto :goto_3

    :cond_5
    move-wide v3, v1

    :goto_3
    const-wide/32 v5, 0x7fffffff

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p1, v3

    .line 1187
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getMaxPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 1188
    invoke-interface {p3}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    :cond_6
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    .line 1190
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->setFurthestPositionInternal(I)V

    .line 1191
    invoke-virtual {p0, p3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setBookLastPosition(I)V

    .line 1193
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getReadingDirection()Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    move-result-object p1

    .line 1194
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookReadingDirectionFromKRFDirection(Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;)Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    .line 1195
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getPrimaryWritingModeFromKRFDirection(Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;)Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    .line 1196
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getUserVisibleLabeling()Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getIsPageExclusiveLabelingFromKRF(Lcom/amazon/krf/platform/KRFBookInfo$UserVisibleLabeling;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isPageExclusiveLabeling:Z

    .line 1197
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isFixedLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFixedLayout:Z

    .line 1198
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isGenericFixedFormat()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGenericFixedFormat:Z

    .line 1199
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->hasPublisherPanels()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasPublisherPanels:Z

    .line 1200
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isGuidedViewNative()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGuidedViewNative:Z

    .line 1201
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getBookOrientationLock()Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getBookOrientationFromKRFOrientation(Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;)Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->orientation:Lcom/amazon/kindle/model/content/BookOrientation;

    .line 1202
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getBookOrientationLock()Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    move-result-object p1

    sget-object p3, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockNone:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    const/4 v1, 0x1

    if-eq p1, p3, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->pageOrientationLocked:Z

    const-string p1, "graphical_highlights"

    .line 1204
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getBooleanFromString(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasGraphicalHighlights:Z

    const-string p1, "continuous_popup_progression"

    .line 1205
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->createStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getBooleanFromString(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasContinuousPopupProgression:Z

    .line 1207
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isTTSEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->ttsAllowed:Ljava/lang/Boolean;

    .line 1209
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->hasPublisherFont()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasPublisherFonts:Z

    .line 1211
    :try_start_1
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getExpirationDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1212
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_5

    :cond_8
    const-wide/16 v2, -0x1

    :goto_5
    iput-wide v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->expirationDate:J
    :try_end_1
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 1214
    sget-object p3, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v2, "Error when extracting expiration date from KRFBookInfo"

    invoke-static {p3, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1217
    :goto_6
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->extractClippingLimit(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_7

    :cond_9
    const p1, 0x3dcccccd    # 0.1f

    :goto_7
    iput p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->clippingLimit:F

    .line 1220
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->extractVolumeLabel(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->volumeLabel:Ljava/lang/String;

    .line 1221
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isTextbook()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook:Z

    .line 1222
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->isDictionary()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasDictionaryLookup:Z

    .line 1223
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->supportsVerticalScrollReflowable()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1224
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFreeDictionary()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p2, 0x1

    :cond_a
    iput-boolean p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->continuousScrollReflowableSupported:Z

    .line 1225
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->supportBEVPFVForComics()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->supportBEVPFVForComics:Z

    .line 1226
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->hasRecaps()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasRecaps:Z

    .line 1227
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBookInfo;->getIntendedAudience()Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->mapKRFIntendedAudience(Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;)Lcom/amazon/kindle/model/content/IntendedAudience;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->intendedAudience:Lcom/amazon/kindle/model/content/IntendedAudience;

    return-void

    :catchall_0
    move-exception p1

    .line 1159
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static mapKRFIntendedAudience(Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;)Lcom/amazon/kindle/model/content/IntendedAudience;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1598
    :cond_0
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$IntendedAudience:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    return-object v0

    .line 1600
    :cond_1
    sget-object p0, Lcom/amazon/kindle/model/content/IntendedAudience;->CHILDREN:Lcom/amazon/kindle/model/content/IntendedAudience;

    return-object p0
.end method

.method private populateMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    .line 1280
    monitor-enter p0

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->fileLastModified:J

    .line 1282
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->publisher:Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->asin:Ljava/lang/String;

    .line 1284
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->parentAsin:Ljava/lang/String;

    .line 1285
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->originType:Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->cdeContentType:Ljava/lang/String;

    .line 1287
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->sample:Z

    .line 1288
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->title:Ljava/lang/String;

    .line 1289
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->author:Ljava/lang/String;

    .line 1290
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->publicationDate:Ljava/util/Date;

    goto :goto_0

    .line 1293
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->publicationDate:Ljava/util/Date;

    .line 1295
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->guid:Ljava/lang/String;

    .line 1296
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isEncrypted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->isEncrypted:Z

    .line 1297
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getWaterMark()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->watermark:Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    .line 1299
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->authorPronunciation:Ljava/lang/String;

    .line 1300
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->mimeType:Ljava/lang/String;

    .line 1301
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDate()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->date:J

    .line 1302
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->baseLanguage:Ljava/lang/String;

    .line 1303
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v1

    iput v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->readingProgress:I

    .line 1304
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->titlePronunciation:Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAlongTitle()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->hasReadAlongTitle:Z

    .line 1306
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->archivable:Z

    .line 1307
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 1308
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    .line 1309
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result p1

    iput-boolean p1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->isFalkorEpisode:Z

    const/4 p1, 0x1

    .line 1314
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->metadataPopulated:Z

    .line 1315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private populateMetadata(Lcom/amazon/krf/platform/KRFBookInfo;Ljava/io/File;)V
    .locals 8

    .line 1231
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 1232
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 1234
    :cond_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getCDEContentType()Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getBaseLanguage()Ljava/util/Locale;

    move-result-object v3

    .line 1240
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getPublishingDate()Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1242
    :catch_0
    sget-object v4, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid publishing date.  Using date = 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1246
    :goto_0
    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/amazon/kindle/rendering/BookMetadata;->fileLastModified:J

    .line 1247
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getPublisher()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->publisher:Ljava/lang/String;

    .line 1248
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iput-object v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->asin:Ljava/lang/String;

    .line 1249
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->extractParentAsin(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->parentAsin:Ljava/lang/String;

    .line 1251
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iput-object v1, p2, Lcom/amazon/kindle/rendering/BookMetadata;->cdeContentType:Ljava/lang/String;

    .line 1252
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->isSample()Z

    move-result v5

    iput-boolean v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->sample:Z

    .line 1253
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->title:Ljava/lang/String;

    .line 1254
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->author:Ljava/lang/String;

    .line 1255
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iput-object v4, p2, Lcom/amazon/kindle/rendering/BookMetadata;->publicationDate:Ljava/util/Date;

    .line 1257
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getGuid()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->guid:Ljava/lang/String;

    .line 1258
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->isEncrypted()Z

    move-result v5

    iput-boolean v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->isEncrypted:Z

    .line 1259
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getWatermark()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/amazon/kindle/rendering/BookMetadata;->watermark:Ljava/lang/String;

    .line 1260
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->calculateBookType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    iput-object v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    .line 1261
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->extractAuthorPronunciation(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->authorPronunciation:Ljava/lang/String;

    .line 1262
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->computeMimeType(Lcom/amazon/krf/platform/KRFBookInfo;)V

    .line 1266
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->date:J

    .line 1268
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iput-object v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->baseLanguage:Ljava/lang/String;

    .line 1270
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->extractTitlePronunciation(Lcom/amazon/krf/platform/KRFBookInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->titlePronunciation:Ljava/lang/String;

    .line 1271
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->hasReadAlongTitle:Z

    .line 1272
    iput-boolean v0, p2, Lcom/amazon/kindle/rendering/BookMetadata;->archivable:Z

    .line 1273
    invoke-interface {p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getOwnershipType()Ljava/lang/String;

    move-result-object p1

    .line 1274
    iget-object p2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getContentOwnershipTypeFromKRFString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object p1

    iput-object p1, p2, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 1275
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iput-object v2, p1, Lcom/amazon/kindle/rendering/BookMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    .line 1276
    iput-boolean v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->isFalkorEpisode:Z

    return-void
.end method

.method private setFurthestPositionInternal(I)V
    .locals 1

    .line 399
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 402
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    return-void
.end method

.method private setStartingPositionInternal(I)V
    .locals 1

    .line 408
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookStartingPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 411
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookStartingPosition:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 973
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->onBookClose()V

    .line 974
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    const/4 v0, 0x0

    .line 975
    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    return-void
.end method

.method public createPageLabels()Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method createPlatformPosition(I)Lcom/amazon/krf/platform/Position;
    .locals 4

    .line 1027
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 1029
    :try_start_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 1032
    throw p1
.end method

.method createPlatformPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;
    .locals 2

    .line 1017
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 1019
    :try_start_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/KRFBook;->createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 1022
    throw p1
.end method

.method public getAmzGuid()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->guid:Ljava/lang/String;

    return-object v0
.end method

.method protected getAmznUserLocationFromPosition(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorPronunciation()Ljava/lang/String;
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->authorPronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->baseLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getBookLastPosition()I
    .locals 1

    .line 368
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 369
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookLastPosition()I

    move-result v0

    return v0
.end method

.method public getBookReadingProgress()Ljava/lang/Integer;
    .locals 1

    .line 633
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->recalculateReadingProgress()V

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->readingProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBookStartingPosition()I
    .locals 1

    .line 374
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 375
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookStartingPosition()I

    move-result v0

    return v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getCDEBookFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "YJBinary"

    return-object v0
.end method

.method public getClippingLimit()F
    .locals 1

    .line 786
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 787
    iget v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->clippingLimit:F

    return v0
.end method

.method public getContentClass()Lcom/amazon/kindle/model/content/ContentClass;
    .locals 3

    .line 759
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 760
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFixedLayout:Z

    if-eqz v0, :cond_4

    .line 761
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook:Z

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasContinuousPopupProgression:Z

    if-eqz v0, :cond_1

    .line 765
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0

    .line 766
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasPublisherPanels:Z

    if-eqz v1, :cond_2

    .line 767
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0

    .line 768
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasGraphicalHighlights:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 769
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0

    .line 772
    :cond_3
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v1, "We couldn\'t classify properly this fixed layout book. A default content class will be considered."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_4
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->DEFAULT:Lcom/amazon/kindle/model/content/ContentClass;

    return-object v0
.end method

.method public getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 4

    .line 330
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object p1

    .line 331
    iget-object v0, p1, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 333
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    iget v2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget v3, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-interface {v0, v2, v3}, Lcom/amazon/krf/platform/KRFBookInfo;->getCover(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v2, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;

    invoke-direct {v2, v0, p2}, Lcom/mobipocket/android/drawing/AndroidOSSupportedImage;-><init>(Landroid/graphics/Bitmap;Lcom/amazon/kindle/util/drawing/Dimension;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 343
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 341
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v2, "Exception in getting embedded image."

    invoke-static {v0, v2, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    :catch_1
    sget-object p2, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v0, "attempting to fetch embedded cover but ranout of memory!"

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 343
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 344
    throw p2

    :cond_1
    :goto_2
    return-object v1
.end method

.method public getExpirationDate()J
    .locals 2

    .line 738
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 739
    iget-wide v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->expirationDate:J

    return-wide v0
.end method

.method public getExpirationOffset()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->extendedMetadata:Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFileLastModified()J
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-wide v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->fileLastModified:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->genericMetadata:Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem$KRIFMetadataModel;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;Lcom/amazon/kindle/rendering/KRIFBookItem$1;)V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->genericMetadata:Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->genericMetadata:Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

    return-object v0
.end method

.method public getIntendedAudience()Lcom/amazon/kindle/model/content/IntendedAudience;
    .locals 1

    .line 1609
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 1610
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->intendedAudience:Lcom/amazon/kindle/model/content/IntendedAudience;

    return-object v0
.end method

.method public getKRFVersion()Lcom/amazon/kindle/model/content/KRFVersion;
    .locals 1

    .line 980
    sget-object v0, Lcom/amazon/kindle/model/content/KRFVersion;->KRF5:Lcom/amazon/kindle/model/content/KRFVersion;

    return-object v0
.end method

.method public getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I
    .locals 6

    .line 486
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 487
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v1, :cond_2

    .line 489
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFLandmarkType(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 490
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    .line 491
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getCurrentReadingMode()Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/amazon/krf/platform/KRFBookInfo;->getLandmarkPosition(Lcom/amazon/krf/platform/KRFBookInfo$LandmarkType;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 492
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 493
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v1

    .line 496
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return p1

    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 497
    throw p1

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public getLargeEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;
    .locals 0

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getEmbeddedCover(Lcom/amazon/kindle/util/drawing/ImageFactory;Lcom/amazon/kindle/util/drawing/Dimension;)Lcom/amazon/kindle/util/drawing/Image;

    move-result-object p1

    return-object p1
.end method

.method public getLocationFromPosition(I)I
    .locals 4

    .line 446
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 447
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v1, :cond_0

    int-to-long v2, p1

    .line 449
    :try_start_0
    invoke-interface {v1, v2, v3}, Lcom/amazon/krf/platform/KRFBook;->createPosition(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 450
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getLocationFromPosition(Lcom/amazon/krf/platform/Position;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v1

    .line 452
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 453
    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;
    .locals 1

    .line 649
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 650
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->orientation:Lcom/amazon/kindle/model/content/BookOrientation;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 6

    .line 707
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-nez v0, :cond_2

    .line 708
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 711
    :try_start_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-interface {v1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    .line 713
    invoke-interface {v1}, Lcom/amazon/krf/platform/KRFBookInfo;->getOwnershipType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 716
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getContentOwnershipTypeFromKRFString(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v1

    iput-object v1, v3, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 720
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v1, :cond_1

    .line 721
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v5, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v5, v5, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 722
    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 721
    invoke-interface {v1, v3, v2, v4}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 726
    :cond_1
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v2, "BookID is null, aborting update content metadata"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    :goto_1
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 730
    throw v1

    .line 733
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->ownershipType:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/kindle/rendering/KRIFPositionFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFPositionFactory;-><init>(Lcom/amazon/kindle/rendering/KRIFBookItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPositionFromLocation(J)I
    .locals 5

    .line 468
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getKRFBook()Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;

    move-result-object v0

    .line 469
    iget-object v1, v0, Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v1, :cond_1

    .line 471
    :try_start_0
    invoke-interface {v1}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/amazon/krf/platform/KRFBookInfo;->getPositionFromLocation(J)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    .line 472
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 473
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p2, p1

    .line 476
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    return p2

    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->disposeIfSelfOwn(Lcom/amazon/kindle/rendering/KRIFBookItem$KRFBookWrapper;)V

    .line 477
    throw p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 667
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->primaryWritingMode:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 2

    .line 584
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 585
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 586
    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v1, v1, Lcom/amazon/kindle/rendering/BookMetadata;->publicationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->publicationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->publisher:Ljava/lang/String;

    return-object v0
.end method

.method public getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 662
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->readingDirection:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    return-object v0
.end method

.method public getReadingModeLastPosition()I
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 363
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getReadingModeLastPosition()I

    move-result v0

    return v0
.end method

.method public getSettingsFileName()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->mbpFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getSidecarPath()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->sidecarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeLabel()Ljava/lang/String;
    .locals 1

    .line 835
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 836
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->volumeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->watermark:Ljava/lang/String;

    return-object v0
.end method

.method public hasDictionaryLookups()Z
    .locals 1

    .line 813
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 814
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasDictionaryLookup:Z

    return v0
.end method

.method public hasPublisherFonts()Z
    .locals 1

    .line 691
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 692
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasPublisherFonts:Z

    return v0
.end method

.method public hasRecaps()Z
    .locals 1

    .line 859
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 860
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->hasRecaps:Z

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-boolean v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->archivable:Z

    return v0
.end method

.method public isBookRead()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isRead:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-boolean v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->isEncrypted:Z

    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 3

    .line 1586
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1587
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-boolean v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->isFalkorEpisode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isFixedLayout()Z
    .locals 1

    .line 679
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 680
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFixedLayout:Z

    return v0
.end method

.method public isFreeDictionary()Z
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadDBMetadata()V

    .line 820
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFreeDict:Z

    return v0
.end method

.method public isGenericFixedFormat()Z
    .locals 1

    .line 697
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 698
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGenericFixedFormat:Z

    return v0
.end method

.method public isPageExclusiveLabeling()Z
    .locals 1

    .line 673
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 674
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isPageExclusiveLabeling:Z

    return v0
.end method

.method public isPageOrientationLocked()Z
    .locals 1

    .line 1615
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 1616
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->pageOrientationLocked:Z

    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-boolean v0, v0, Lcom/amazon/kindle/rendering/BookMetadata;->sample:Z

    return v0
.end method

.method public isTextbook()Z
    .locals 1

    .line 847
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 848
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook:Z

    return v0
.end method

.method public loadDBMetadata()V
    .locals 4

    .line 793
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLoaded:Z

    if-nez v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLoaded:Z

    if-nez v1, :cond_1

    .line 796
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 798
    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v3, :cond_0

    .line 799
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 803
    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFreeDict:Z

    const/4 v1, 0x1

    .line 804
    iput-boolean v1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->dbMetadataLoaded:Z

    .line 807
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public onBookClose()V
    .locals 0

    .line 969
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->close()V

    return-void
.end method

.method public onReadingModeChange(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
    .locals 6

    .line 985
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v0, :cond_0

    return-void

    .line 990
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/ReadingModeUtil;->toKRFReadingMode(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;

    move-result-object p1

    .line 992
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getFirstPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 993
    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    long-to-int v1, v4

    .line 994
    invoke-interface {v0}, Lcom/amazon/krf/platform/KRFBook;->getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/KRFBookInfo;->getLastPosition(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 995
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    :cond_2
    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    .line 1004
    invoke-direct {p0, v1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->setStartingPositionInternal(I)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->setFurthestPositionInternal(I)V

    return-void
.end method

.method openBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->createKRFBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    return-object v0
.end method

.method protected populateSupportedFeatureSet()V
    .locals 6

    .line 901
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFixedLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 903
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFalkorEpisode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isSample()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 905
    :goto_1
    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Annotations:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFreeDictionary()Z

    move-result v3

    if-nez v3, :cond_2

    .line 906
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 905
    :goto_2
    invoke-virtual {p0, v5, v3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 909
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFreeDictionary()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 910
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Sharing:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v3, v2}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 913
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p0, v3, v4}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 914
    sget-object v3, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isTextbook()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 919
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailGeneration:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 921
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGuidedViewSupported()Z

    move-result v0

    .line 922
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 924
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->RaggedRight:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-kfx-ebook"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 926
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isContinuousScrollReflowableSupported()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    .line 928
    sget-object v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedViewNative:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isGuidedViewNativeSupported()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V

    return-void
.end method

.method protected recalculateReadingProgress()V
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->recalculateReadingProgress()V

    .line 1044
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->readingProgress:I

    return-void
.end method

.method public resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz v0, :cond_1

    .line 527
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 528
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kindle/rendering/BookMetadata;->asin:Ljava/lang/String;

    .line 529
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    .line 530
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->bookMetadata:Lcom/amazon/kindle/rendering/BookMetadata;

    iget-object v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getCDEContentTypeFor(Lcom/amazon/kcp/library/models/BookType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kindle/rendering/BookMetadata;->cdeContentType:Ljava/lang/String;

    .line 531
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFBookItem;->TAG:Ljava/lang/String;

    const-string v0, "mismatch in book id from server and that from inside the book. The one from the server overrides the one from inside the book."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 288
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 289
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->fileName:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    .line 292
    invoke-direct {p0, p1}, Lcom/amazon/kindle/rendering/KRIFBookItem;->populateMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 294
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setLastPositionRead(I)V

    .line 295
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setFurthestPositionRead(I)V

    return-void
.end method

.method public setBookFurthestPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempting to set book furthest position in KRIFBookItem. This value should only be set by the book item itself!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBookStartingPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 392
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempting to set book furthest position in KRIFBookItem. This value should only be set by the book item itself!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPageLabelFile(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supportBEVPFVForComics()Z
    .locals 1

    .line 853
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->loadKRFBookMetadata()V

    .line 854
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/KRIFBookItem;->supportBEVPFVForComics:Z

    return v0
.end method

.method public supportsAnnotationSync()Z
    .locals 2

    .line 416
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isFalkorEpisode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFBookItem;->isSample()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public supportsLocationToPositionConversion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
