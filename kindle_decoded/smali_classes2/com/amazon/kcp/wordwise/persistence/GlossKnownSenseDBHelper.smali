.class public Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;
.super Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;
.source "GlossKnownSenseDBHelper.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/feedback/IGlossKnownSense;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper$Builder;
    }
.end annotation


# static fields
.field private static DATABASE_VERSION:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    sput v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->DATABASE_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->DATABASE_VERSION:I

    invoke-direct {p0, v0, p2, v1}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public addKnownSense(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V
    .locals 4

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Warning: Sense to add to the known senses is null"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "sense_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const/4 v2, 0x5

    const-string v3, "known_sense"

    .line 127
    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "Error on trying to add a known sense."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isOpen()Z
    .locals 4

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on isOpen"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 48
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseContract;->CREATE_KNOWN_SENSE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "Known Sense filter database has been created."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 53
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public suppressSenses(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 78
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "?"

    .line 79
    invoke-static {v1, v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->fillArrayWith(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossKnownSenseContract;->FIND_KNOWN_SENSES_QUERY:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, ","

    invoke-static {v0, v4}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 87
    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v5, 0x1

    .line 93
    invoke-virtual {v4}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    move v5, v6

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 99
    :cond_3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sense_id"

    .line 100
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 105
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setSuppressed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    throw v0

    :cond_5
    :goto_2
    return-void
.end method
