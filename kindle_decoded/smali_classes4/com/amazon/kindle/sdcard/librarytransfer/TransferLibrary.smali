.class public final Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;
.super Ljava/lang/Object;
.source "TransferLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferLibrary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferLibrary.kt\ncom/amazon/kindle/sdcard/librarytransfer/TransferLibrary\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n2448#2:242\n1517#2:244\n1588#2,3:245\n1819#2,2:248\n1022#2:250\n1819#2:251\n1819#2,2:252\n1819#2,2:254\n1820#2:256\n1819#2,2:257\n1517#2:259\n1588#2,3:260\n1#3:243\n*E\n*S KotlinDebug\n*F\n+ 1 TransferLibrary.kt\ncom/amazon/kindle/sdcard/librarytransfer/TransferLibrary\n*L\n147#1:242\n147#1:244\n147#1,3:245\n148#1,2:248\n152#1:250\n152#1:251\n154#1,2:252\n178#1,2:254\n152#1:256\n185#1,2:257\n211#1:259\n211#1,3:260\n147#1:243\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

.field private static final TAG:Ljava/lang/String;

.field private static final bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final booksToCalculate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile isTransferring:Z

.field private static final libraryController:Lcom/amazon/kcp/library/ILibraryController;

.field private static final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private static final lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

.field private static totalTransferSize:J

.field private static final transferableContentMetadataFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const-class v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    new-instance v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-direct {v1}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;-><init>()V

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    .line 33
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.getTag(TransferLibrary::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->TAG:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$transferableContentMetadataFilter$1;

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->transferableContentMetadataFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "factory"

    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    const-string v3, "factory.fileSystem"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v2

    const-string v3, "factory.fileSystem.pathDescriptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 70
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    const-string v3, "factory.libraryService"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 71
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    const-string v3, "factory.libraryController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    .line 72
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object v1

    const-string v2, "factory.bookLockManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    .line 73
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    const-string v1, "PubSubMessageService.get\u2026nsferLibrary::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLibraryController$p(Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;)Lcom/amazon/kcp/library/ILibraryController;
    .locals 0

    .line 31
    sget-object p0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->libraryController:Lcom/amazon/kcp/library/ILibraryController;

    return-object p0
.end method

.method public static final isBookTransferring(Lcom/amazon/kindle/model/content/IBookID;)Z
    .locals 3

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    invoke-virtual {v2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final booksMetadataToTransfer()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "bookDataToTransferStatus.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 261
    check-cast v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    .line 211
    invoke-virtual {v2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final calculateTransfer()V
    .locals 10

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const-class v1, Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;

    invoke-static {v1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v1

    const-string v2, "Discoveries.of(IContentT\u2026rParticipant::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 96
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 v1, 0x0

    .line 97
    sput-wide v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->totalTransferSize:J

    .line 98
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    aget-object v2, v1, v3

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    new-instance v2, Ljava/io/File;

    aget-object v1, v1, v3

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    .line 107
    new-instance v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    invoke-direct {v5, v4, v2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/io/File;)V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;

    .line 109
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;->estimateTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 112
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getParticipants()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-wide v8, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->totalTransferSize:J

    invoke-virtual {v7}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;->getSize()J

    move-result-wide v6

    add-long/2addr v8, v6

    sput-wide v8, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->totalTransferSize:J

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_4

    .line 117
    sget-object v4, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->cleanUp()V

    .line 125
    :cond_5
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final cleanUp()V
    .locals 2

    .line 217
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const-wide/16 v0, 0x0

    .line 219
    sput-wide v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->totalTransferSize:J

    const/4 v0, 0x0

    .line 220
    sput-boolean v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isTransferring:Z

    return-void
.end method

.method public final executeTransfer(Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;)V
    .locals 12

    const-string v0, "lock"

    const-string v1, "listener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    aget-object v1, v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 142
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 143
    sput-boolean v3, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isTransferring:Z

    .line 146
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "bookDataToTransferStatus.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    .line 147
    sget-object v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 246
    check-cast v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    .line 147
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;

    .line 148
    invoke-interface {v5, v2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;->onLibraryTransferStart(Ljava/util/Collection;)V

    goto :goto_2

    .line 250
    :cond_3
    new-instance v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$executeTransfer$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$executeTransfer$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 251
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;

    .line 252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;

    .line 154
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;->onBookTransferStart(Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    if-nez v4, :cond_9

    .line 158
    :try_start_0
    sget-object v7, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v7, v6}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_6

    .line 161
    :try_start_1
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getParticipants()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    :goto_5
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;

    .line 162
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getKrxBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v10

    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getDestinationDir()Ljava/io/File;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;->executeTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v8, v9

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_7

    :catch_1
    move-exception v7

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    const/4 v8, 0x0

    .line 170
    :cond_7
    sget-object v7, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v7, v6}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    .line 171
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 172
    :goto_6
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_9

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception v7

    const/4 v8, 0x0

    .line 167
    :goto_7
    :try_start_3
    sget-object v9, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->TAG:Ljava/lang/String;

    const-string v10, "Error when trying to transfer Book."

    invoke-static {v9, v10, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    sget-object v7, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v7, v6}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    .line 171
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_6

    .line 170
    :goto_8
    sget-object v1, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->lockManager:Lcom/amazon/kcp/reader/IBookLockManager;

    invoke-interface {v1, v6}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    .line 171
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_8
    throw p1

    :cond_9
    const/4 v8, 0x0

    .line 177
    :cond_a
    :goto_9
    sget-object v7, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->bookDataToTransferStatus:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v9, "bookData"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;

    .line 178
    invoke-virtual {v5}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary$BookData;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;->onBookTransferFinish(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    goto :goto_a

    .line 179
    :cond_b
    sget-object v5, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v7, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;

    const-string v8, "bookId"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6}, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-interface {v5, v7}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 181
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 257
    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;

    .line 185
    invoke-interface {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferListener;->onLibraryTransferFinish()V

    goto :goto_b

    .line 186
    :cond_d
    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->cleanUp()V

    return-void

    .line 137
    :cond_e
    :goto_c
    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->cleanUp()V

    return-void
.end method

.method public final getTotalTransferSize()J
    .locals 2

    .line 64
    sget-wide v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->totalTransferSize:J

    return-wide v0
.end method

.method public final shouldCalculate()Z
    .locals 5

    .line 83
    sget-boolean v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->isTransferring:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    sget-object v2, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v3, 0x0

    sget-object v4, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->transferableContentMetadataFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object v2

    const-string v3, "libraryService.listConte\u2026bleContentMetadataFilter)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->booksToCalculate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
