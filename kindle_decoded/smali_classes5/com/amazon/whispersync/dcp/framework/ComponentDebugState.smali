.class public Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;
.super Ljava/lang/Object;
.source "ComponentDebugState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$ServiceState;,
        Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$Factory;
    }
.end annotation


# static fields
.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final COMP_STATE_KEY:Ljava/lang/String; = "state"

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mComponent:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mComponent:Ljava/lang/String;

    .line 58
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->AUTHORITY_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mComponent:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/net/Uri;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/content/ContentResolver;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private getFullTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mComponent:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mComponent:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addOrUpdateRow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;-><init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteRow(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;-><init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public deleteState(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->deleteRow(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getCursorLoader(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;
    .locals 8

    .line 228
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 230
    new-instance v7, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, v7

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/android/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public getRow(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v5, p1

    const/4 v3, 0x0

    const-string v4, "id = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 171
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 177
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 178
    array-length v2, v1

    :goto_0
    if-ge p1, v2, :cond_1

    aget-object v3, v1, p1

    .line 180
    invoke-static {p2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 188
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "value"

    const/4 v1, 0x0

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 141
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 214
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V

    return-void
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;Ljava/lang/String;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->getFullTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "value"

    .line 75
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 77
    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->addOrUpdateRow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
