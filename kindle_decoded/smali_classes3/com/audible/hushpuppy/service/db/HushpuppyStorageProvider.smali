.class public final Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;
.super Landroid/content/ContentProvider;
.source "HushpuppyStorageProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AUTHORITY_POSTFIX:Ljava/lang/String; = ".hushpuppydb.contentprovider"

.field private static final CONTENT_URI_PREFIX:Ljava/lang/String; = "content://"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static authority:Ljava/lang/String;

.field private static contentUri:Landroid/net/Uri;


# instance fields
.field protected dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected rollingStoneDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;

    .line 34
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->contentUri:Landroid/net/Uri;

    .line 46
    sput-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->authority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 73
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->contentUri:Landroid/net/Uri;

    .line 76
    :cond_0
    sget-object p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->contentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static getProviderAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->authority:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 125
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->storage_provider_authority_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".hushpuppydb.contentprovider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->authority:Ljava/lang/String;

    .line 129
    :cond_1
    sget-object p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->authority:Ljava/lang/String;

    return-object p0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->rollingStoneDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTableName uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, ""

    .line 92
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 105
    invoke-static {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->rollingStoneDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 199
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 201
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    invoke-virtual {v4, p0, v2, v3}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 145
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - where : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - args : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 161
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - initialValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 165
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    new-instance v2, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    invoke-direct {v2, v0}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;-><init>(Landroid/content/Context;Lcom/audible/mobile/preferences/PreferenceStore;)V

    iput-object v1, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 137
    new-instance v1, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;

    invoke-direct {v1, v0}, Lcom/audible/relationship/db/CompanionMappingSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->rollingStoneDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 138
    new-instance v1, Lcom/audible/hushpuppy/service/db/HushpuppyStorageUpgrade;

    invoke-direct {v1, v0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageUpgrade;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 172
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - projection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sortOrder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    .line 177
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 184
    sget-object v0, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " values : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/db/HushpuppyStorageProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
