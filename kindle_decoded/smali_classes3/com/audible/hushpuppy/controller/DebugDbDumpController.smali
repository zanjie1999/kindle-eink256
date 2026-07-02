.class public final Lcom/audible/hushpuppy/controller/DebugDbDumpController;
.super Ljava/lang/Object;
.source "DebugDbDumpController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 37
    sget-object v0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/DebugDbDumpController;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/DebugDbDumpController;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->dumpTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dumpTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, ","

    .line 107
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 110
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_6

    .line 112
    :try_start_1
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->getColumnNames(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    .line 113
    invoke-static {p2, v0}, Lcom/audible/mobile/util/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 117
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->getColumnTypes(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v2, 0x0

    .line 120
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 121
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const-string v3, "<null>"

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v3, "<blob>"

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_5
    invoke-static {v1, v0}, Lcom/audible/mobile/util/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 149
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :catchall_1
    move-exception p2

    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_8
    throw p2
.end method

.method private getColumnNames(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getColumnTypes(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/debug/DbDumpEvent;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;-><init>(Lcom/audible/hushpuppy/controller/DebugDbDumpController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
