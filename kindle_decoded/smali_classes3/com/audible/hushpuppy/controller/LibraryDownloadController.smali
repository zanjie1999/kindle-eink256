.class public Lcom/audible/hushpuppy/controller/LibraryDownloadController;
.super Ljava/lang/Object;
.source "LibraryDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final bundledDownloadBooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private ebook:Lcom/amazon/kindle/krx/content/IBook;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

.field private final service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 103
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 104
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    new-instance p2, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController$LibraryEventListener;-><init>(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/audible/hushpuppy/controller/LibraryDownloadController$1;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->bundledDownloadBooks:Ljava/util/List;

    .line 106
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 107
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 108
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 109
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 110
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->isBookJustDownloaded(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->bundledDownloadBooks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->downloadPair(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/LibraryDownloadController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p0

    return-object p0
.end method

.method private downloadPair(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 6

    .line 235
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 238
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/library/LibraryDownloadEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 243
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 245
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    .line 246
    sget-object v2, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Downloading sync file, Audiobook ASIN: %s, ACR: %s"

    invoke-interface {v2, v5, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2, v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    .line 249
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getPreferredAudiobookDownloadFormat(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v1

    .line 250
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 251
    sget-object v2, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Downloading audiobook file, Audiobook ASIN: %s, Format: %s, EBook ASIN: %s"

    invoke-interface {v2, v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2, v0, v1, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method private getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 258
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 259
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getPurchasedRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isBookJustDownloaded(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 226
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne p1, v0, :cond_1

    .line 227
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq p1, v0, :cond_0

    .line 228
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final canShowLibraryDownloadButton()Z
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Can\'t show library download button since ebook is null. Something is wrong.."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 169
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 170
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloading(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 171
    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileQueued(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    .line 173
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const-string v3, "The ebook {} has WFV companion audiobook {}. Can show library download button"

    .line 172
    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    .line 177
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "The book does not have WSfV or companion is not purchased."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1
.end method

.method public final handleLibraryDownload()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 127
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->bundledDownloadBooks:Ljava/util/List;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibraryWithEBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 130
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 132
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 134
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->downloadPair(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setEbookAndRelationship(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->ebook:Lcom/amazon/kindle/krx/content/IBook;

    .line 144
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->getRelationship(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->relationship:Lcom/audible/hushpuppy/common/relationship/IRelationship;

    return-void
.end method
