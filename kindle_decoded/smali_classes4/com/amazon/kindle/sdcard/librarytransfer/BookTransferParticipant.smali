.class public final Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;
.super Lcom/amazon/kindle/krx/sdcard/librarytransfer/BaseContentTransferParticipant;
.source "BookTransferParticipant.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookTransferParticipant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookTransferParticipant.kt\ncom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final bookToPrimaryPathCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final mph:Lcom/amazon/kcp/application/IMultipleProfileHelper;

.field private final pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/BaseContentTransferParticipant;-><init>()V

    .line 24
    const-class v0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BookTransferParticipant::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "factory"

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    const-string v2, "factory.fileSystem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v1

    const-string v2, "factory.fileSystem.pathDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 35
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v1

    const-string v2, "factory.multipleProfileHelper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->mph:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    .line 36
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v1, "factory.libraryService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method

.method private final calculatePrimaryBookPath(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pathDescriptor.getBookPath(bookId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->isPathInExternalPrimaryStorage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->mph:Lcom/amazon/kcp/application/IMultipleProfileHelper;

    invoke-interface {v2, v0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final transferBook(Lcom/amazon/kindle/content/ContentMetadata;Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-static {p2, v0}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 76
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "newBookAssetFile.canonicalPath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 82
    invoke-static {p2}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 85
    invoke-static {v0}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->deleteQuietly(Ljava/io/File;)Z

    .line 86
    iget-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->TAG:Ljava/lang/String;

    const-string p3, "Error when trying to transfer Book."

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public estimateTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->calculatePrimaryBookPath(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 41
    iget-object p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;

    invoke-static {p1}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public executeTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Z
    .locals 4

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newPath"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    .line 46
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->bookToPrimaryPathCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferParticipant;->transferBook(Lcom/amazon/kindle/content/ContentMetadata;Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
