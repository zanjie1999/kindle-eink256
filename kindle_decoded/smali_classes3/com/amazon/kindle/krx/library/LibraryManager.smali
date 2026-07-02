.class public Lcom/amazon/kindle/krx/library/LibraryManager;
.super Lcom/amazon/kindle/krx/library/BaseLibraryManager;
.source "LibraryManager.java"


# static fields
.field private static final ALL_ITEMS:Ljava/lang/String;

.field private static final ALL_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AND:Ljava/lang/String; = " AND "

.field private static final AUTHOR_PRONUNCIATION:Ljava/lang/String;

.field private static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field private static final ID_LOADER_COLUMN:Ljava/lang/String;

.field private static final SORT_BY_RECENT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_PRONUNCIATION:Ljava/lang/String;

.field private static final USER_ITEMS:Ljava/lang/String;


# instance fields
.field private final actionRunnerFactory:Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final contentAddEventHandler:Lcom/amazon/kindle/krx/library/ContentAddEventHandler;

.field private final contentDeleteEventHandler:Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;

.field private final contentUpdateEventHandler:Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;

.field private final context:Landroid/content/Context;

.field private final groupService:Lcom/amazon/kindle/content/IGroupService;

.field private listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/library/ILibraryEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    const-class v0, Lcom/amazon/kindle/krx/library/LibraryManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COALESCE(NULLIF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\'\'),"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AS AUTHOR_P"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->AUTHOR_PRONUNCIATION:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AS TITLE_P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TITLE_PRONUNCIATION:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " AS _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->ID_LOADER_COLUMN:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 69
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TITLE_PRONUNCIATION:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->AUTHOR_PRONUNCIATION:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const/4 v0, 0x3

    const-string v4, "*"

    aput-object v4, v1, v0

    sput-object v1, Lcom/amazon/kindle/krx/library/LibraryManager;->DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " != ?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->ALL_ITEMS:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    .line 72
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->ALL_ITEMS_ARGS:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->USER_ITEMS:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->SORT_BY_RECENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/IGroupService;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryManager;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->listeners:Ljava/util/Collection;

    .line 95
    iput-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    .line 97
    iput-object p3, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->groupService:Lcom/amazon/kindle/content/IGroupService;

    .line 98
    iput-object p4, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 99
    iput-object p5, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->actionRunnerFactory:Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    .line 100
    new-instance p1, Lcom/amazon/kindle/krx/library/ContentAddEventHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/krx/library/ContentAddEventHandler;-><init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->contentAddEventHandler:Lcom/amazon/kindle/krx/library/ContentAddEventHandler;

    .line 101
    new-instance p1, Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;-><init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->contentUpdateEventHandler:Lcom/amazon/kindle/krx/library/ContentUpdateEventHandler;

    .line 102
    new-instance p1, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;-><init>(Lcom/amazon/kindle/krx/library/LibraryManager;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->contentDeleteEventHandler:Lcom/amazon/kindle/krx/library/ContentDeleteEventHandler;

    .line 103
    iget-object p1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/content/ILibraryService;->setLibraryManager(Lcom/amazon/kindle/krx/library/ILibraryManager;)V

    return-void
.end method

.method private archiveCMSItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .locals 4

    .line 278
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Archiving CMS item - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 280
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getCmsItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 281
    iget-object v1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->actionRunnerFactory:Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->context:Landroid/content/Context;

    sget-object v3, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->ARCHIVE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 282
    invoke-interface {v1, v2, v3, v0, p1}, Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;->createRunner(Landroid/content/Context;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/util/Collection;Ljava/util/Collection;)Lcom/amazon/kindle/cms/ICMSActionRunner;

    move-result-object p1

    .line 283
    invoke-interface {p1}, Lcom/amazon/kindle/cms/ICMSActionRunner;->dispatch()V

    return-void
.end method

.method private createIBook(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 333
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/amazon/kindle/krx/content/GroupedBook;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/GroupedBook;-><init>(Lcom/amazon/kindle/model/content/IListableBook;)V

    return-object v0

    .line 336
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object v0
.end method

.method private createTemporaryMetadata(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 32

    .line 390
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFromContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForBookType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 395
    new-instance v0, Lcom/amazon/kindle/content/ContentMetadata;

    move-object v1, v0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    const/16 v16, 0x0

    new-instance v18, Lcom/amazon/kindle/content/UserContent;

    move-object/from16 v17, v18

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const-wide/16 v25, 0x0

    const-wide/16 v30, -0x1

    const-string v27, "-1"

    const-string v28, "-1"

    const-string v29, ""

    move-object/from16 v19, p2

    invoke-direct/range {v18 .. v31}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v5, ""

    invoke-direct/range {v1 .. v19}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setHasMutlimediaContent(Z)V

    return-object v0
.end method

.method private deleteCMSItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .locals 4

    .line 287
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting CMS item - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 289
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getCmsItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 290
    iget-object v1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->actionRunnerFactory:Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;

    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->context:Landroid/content/Context;

    sget-object v3, Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;->DELETE:Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;

    .line 291
    invoke-interface {v1, v2, v3, v0, p1}, Lcom/amazon/kindle/cms/ICMSActionRunnerFactory;->createRunner(Landroid/content/Context;Lcom/amazon/kindle/cms/ICMSActionRunner$CMSVerb;Ljava/util/Collection;Ljava/util/Collection;)Lcom/amazon/kindle/cms/ICMSActionRunner;

    move-result-object p1

    .line 292
    invoke-interface {p1}, Lcom/amazon/kindle/cms/ICMSActionRunner;->dispatch()V

    return-void
.end method

.method private deleteContentLocally(Ljava/lang/String;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 253
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v2, "Deleting content locally"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private deleteGroupContentLocally(Ljava/lang/String;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v1, "Deleting group content locally"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 269
    invoke-virtual {v1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 273
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to delete locally - GroupMetadata not found"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 13

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryManager;->USER_ITEMS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryManager;->ALL_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IS NOT \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KindleUserGuide"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NOT LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPDTID0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryManager;->ALL_ITEMS_ARGS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->groupService:Lcom/amazon/kindle/content/IGroupService;

    iget-object v3, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryManager;->DEFAULT_COLUMNS:[Ljava/lang/String;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/amazon/kindle/content/dao/ResultsLimit;->NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    sget-object v11, Lcom/amazon/kindle/krx/library/LibraryManager;->SORT_BY_RECENT:Ljava/lang/String;

    sget-object v12, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    const-string v4, "ConsolidatedLibrary"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 355
    invoke-interface/range {v2 .. v12}, Lcom/amazon/kindle/content/IGroupService;->wrapLibraryQuery(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public associateUserToContent(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/IBook;

    .line 369
    iget-object v3, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-nez v3, :cond_2

    .line 370
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 371
    invoke-direct {p0, v2, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->createTemporaryMetadata(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 372
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v5, "TempMetadataCreated"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 381
    iget-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Ljava/util/Collection;)V

    .line 383
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 384
    iget-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->associateUserToContent(Ljava/lang/String;Ljava/util/Collection;Z)V

    :cond_5
    return-void
.end method

.method public deleteItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .locals 1

    .line 244
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->isReaderContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getSerializedBookID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteItem(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteCMSItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V

    :goto_0
    return-void
.end method

.method public deleteItem(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public deleteItem(Ljava/lang/String;Z)V
    .locals 3

    .line 219
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v1, "Deleting content"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed to delete the item locally - non reader item is not supported"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string p2, "Failed to delete the item - wrong id"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteItemLocally(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V
    .locals 1

    .line 235
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->isReaderContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/ILibraryItemId;->getSerializedBookID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteItemLocally(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->archiveCMSItem(Lcom/amazon/kindle/krx/library/ILibraryItemId;)V

    :goto_0
    return-void
.end method

.method public deleteItemLocally(Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteGroupContentLocally(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager;->deleteContentLocally(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to delete the item locally - non reader item is not supported"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to delete the item locally - failed to check BookType"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/ILibraryService;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllContent()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/LibraryManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/content/ILibraryService;->getAllContentMetadata(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/content/IListableBook;

    .line 321
    invoke-direct {p0, v3}, Lcom/amazon/kindle/krx/library/LibraryManager;->createIBook(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 324
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 317
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_1

    .line 324
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3
    :try_end_5
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 325
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not load book items."

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    new-instance p2, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {p2, p1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Lcom/amazon/kindle/krx/content/BookGroupImpl;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/krx/content/BookGroupImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 451
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kindle/krx/library/LibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    .line 452
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v0

    .line 454
    new-instance v4, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;

    invoke-direct {v4, v2, v3, v0}, Lcom/amazon/kindle/krx/content/BookGroupItemImpl;-><init>(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;F)V

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/krx/content/BookGroupImpl;->addItem(Lcom/amazon/kindle/krx/content/BookGroupItem;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getGroupIdFromGroupAsin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    .line 430
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 436
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/library/ILibraryEventListener;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->listeners:Ljava/util/Collection;

    return-object v0
.end method

.method public listContentsFromOriginType(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/library/LibraryManager$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/krx/library/LibraryManager$1;-><init>(Lcom/amazon/kindle/krx/library/LibraryManager;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 169
    new-instance v2, Lcom/amazon/kindle/krx/content/Book;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/krx/content/Book;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public parseForAsinFromBookId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 297
    invoke-static {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V

    return-void
.end method

.method public registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateBookMetadata(Ljava/lang/String;Z)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2, p1}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V

    :cond_0
    return-void
.end method

.method public updateMRPR(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 188
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object p2, p0, Lcom/amazon/kindle/krx/library/LibraryManager;->service:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
