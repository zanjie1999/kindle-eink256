.class public final Lcom/amazon/kcp/library/MarkAsRead;
.super Ljava/lang/Object;
.source "MarkAsRead.kt"

# interfaces
.implements Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;,
        Lcom/amazon/kcp/library/MarkAsRead$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarkAsRead.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarkAsRead.kt\ncom/amazon/kcp/library/MarkAsRead\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,253:1\n1819#2,2:254\n*E\n*S KotlinDebug\n*F\n+ 1 MarkAsRead.kt\ncom/amazon/kcp/library/MarkAsRead\n*L\n93#1,2:254\n*E\n"
.end annotation


# static fields
.field private static final ERL_METADATA_KEY:Ljava/lang/String; = "EA_ERL"

.field private static final TAG:Ljava/lang/String;

.field private static final excludedAutoMarkedContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/ContentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

.field private final goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

.field private final hiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/kcp/library/MarkAsRead$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/MarkAsRead$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    const-class v0, Lcom/amazon/kcp/library/MarkAsRead;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(MarkAsRead::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/MarkAsRead;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/krx/content/ContentType;

    .line 59
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->NEWSPAPER:Lcom/amazon/kindle/krx/content/ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/MarkAsRead;->excludedAutoMarkedContent:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;Lcom/amazon/kindle/network/INetworkService;)V
    .locals 1

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodreadsMarManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenItemToastHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkService"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p2, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p3, p0, Lcom/amazon/kcp/library/MarkAsRead;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    iput-object p4, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    iput-object p5, p0, Lcom/amazon/kcp/library/MarkAsRead;->hiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    iput-object p6, p0, Lcom/amazon/kcp/library/MarkAsRead;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-void
.end method

.method public static final synthetic access$autoMarkBookAsRead(Lcom/amazon/kcp/library/MarkAsRead;Lcom/amazon/kindle/krx/content/IBook;ZZZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/MarkAsRead;->autoMarkBookAsRead(Lcom/amazon/kindle/krx/content/IBook;ZZZ)V

    return-void
.end method

.method public static final synthetic access$getGoodreadsMarManager$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kcp/library/MarkAsRead;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final autoMarkBookAsInProgress(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    .line 139
    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 141
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;->IN_PROGRESS:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 142
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v3, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->AUTOMATIC:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final autoMarkBookAsRead(Lcom/amazon/kindle/krx/content/IBook;ZZZ)V
    .locals 4

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/MarkAsRead;->shouldAutoMarkAsRead(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 149
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 150
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v3, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->AUTOMATIC:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->hiddenItemToastHelper:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->onItemAutoMarkedAsRead(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/MarkAsRead;->reportAutoMarkAsReadMetrics(Lcom/amazon/kindle/krx/content/IBook;ZZZ)V

    .line 155
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 156
    const-class p2, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {p2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksReadingStateDidChange(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private final initializeMarkAsReadContextualAction()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/amazon/kcp/library/mar/MarkAsReadActionButtonProvider;

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/library/MarkAsRead;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    .line 78
    iget-object v3, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 79
    iget-object v4, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    .line 80
    iget-object v5, p0, Lcom/amazon/kcp/library/MarkAsRead;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 76
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/mar/MarkAsReadActionButtonProvider;-><init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kindle/network/INetworkService;)V

    .line 75
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/amazon/kcp/library/mar/MarkAsUnreadActionButtonProvider;

    .line 85
    iget-object v2, p0, Lcom/amazon/kcp/library/MarkAsRead;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    .line 86
    iget-object v3, p0, Lcom/amazon/kcp/library/MarkAsRead;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 87
    iget-object v4, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    .line 88
    iget-object v5, p0, Lcom/amazon/kcp/library/MarkAsRead;->networkService:Lcom/amazon/kindle/network/INetworkService;

    .line 84
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/library/mar/MarkAsUnreadActionButtonProvider;-><init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;Lcom/amazon/kindle/network/INetworkService;)V

    .line 83
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerContextualActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method private final isEndOfBook(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final isPastERL(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EA_ERL"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 131
    sget-object p1, Lcom/amazon/kcp/library/MarkAsRead;->TAG:Ljava/lang/String;

    const-string v0, "LPR is past ERL"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    return v1
.end method

.method private final isValidLPRChange(Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 1

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "contentUpdate.prevMetadata!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final reportAutoMarkAsReadMetrics(Lcom/amazon/kindle/krx/content/IBook;ZZZ)V
    .locals 9

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "ERL"

    .line 163
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "hundredPercent"

    .line 164
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    const-string p2, "endAction"

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, ", "

    .line 166
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 167
    :goto_0
    const-class p3, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {p3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p3, :cond_3

    .line 169
    sget-object p4, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AUTO_MARK_AS_READ:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {p4}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object p4

    .line 170
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->AUTO_MARK_AS_READ:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v0

    .line 168
    invoke-interface {p3, p4, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p4

    .line 172
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFromContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-interface {p4, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string v0, "auto_mark_type"

    .line 173
    invoke-interface {p4, v0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 174
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string p2, "auto_mar_asin"

    invoke-interface {p4, p2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "getPayloadBuilder(\n     \u2026 book.asin)\n            }"

    .line 170
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_3
    return-void
.end method

.method private final shouldAutoMarkAsRead(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 2

    .line 182
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/MarkAsRead;->excludedAutoMarkedContent:Ljava/util/List;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/MarkAsRead$NavigationListener;-><init>(Lcom/amazon/kcp/library/MarkAsRead;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 67
    invoke-direct {p0}, Lcom/amazon/kcp/library/MarkAsRead;->initializeMarkAsReadContextualAction()V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    invoke-interface {v0}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;->initialize()V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->goodreadsMarManager:Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;->registerSubscriber(Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;)V

    return-void
.end method

.method public final onContentUpdate(Ljava/util/Collection;)V
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 254
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 97
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "metadata"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/MarkAsRead;->isValidLPRChange(Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/MarkAsRead;->isPastERL(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 103
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v0

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/MarkAsRead;->isEndOfBook(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_0

    .line 108
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    const-string/jumbo v2, "metadata.readData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq v0, v2, :cond_0

    .line 109
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/MarkAsRead;->autoMarkBookAsInProgress(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_0

    .line 107
    :cond_4
    :goto_3
    new-instance v3, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-direct {p0, v3, v2, v0, v4}, Lcom/amazon/kcp/library/MarkAsRead;->autoMarkBookAsRead(Lcom/amazon/kindle/krx/content/IBook;ZZZ)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sdk.readerUIManager.currentActivity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "numOfItems"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 212
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 p1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 213
    invoke-static {p2, v2, p1, v3, v4}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->truncatedString$default(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;Landroid/app/Activity;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {p2, v0}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->untruncatedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 212
    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/library/ui/LibraryToast;->show$default(Lcom/amazon/kcp/library/ui/LibraryToast;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public onItemsFailedToMove(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sdk.readerUIManager.currentActivity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "numOfItems"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 206
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/library/ui/LibraryToast;->show$default(Lcom/amazon/kcp/library/ui/LibraryToast;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public onItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shelf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sdk.readerUIManager.currentActivity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read_toast_action:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "currentActivity.getStrin\u2026ark_as_read_toast_action)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->no:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "currentActivity.getString(R.string.no)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "numOfItems"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 189
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    if-eqz v0, :cond_0

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    .line 190
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read_toast_action:I

    invoke-virtual {p3, v8, v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->truncatedString(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-virtual {p3, v0}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->untruncatedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 192
    new-instance v0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;-><init>(Lcom/amazon/kcp/library/MarkAsRead;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v8, v9, p3, v0}, Lcom/amazon/kcp/library/ui/LibraryToast;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
