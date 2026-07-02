.class public Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;
.super Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;
.source "GlossDictionaryDBHelper.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_TERM_LENGTH:I = 0x3

.field private static final DEFAULT_TERM_TERMINATORS:Ljava/lang/String; = ",\t;\t.\t\"\t\'\t!\t?"

.field private static final DEFAULT_TOKEN_SEPARATOR:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String;

.field private static final database_version:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p1, "metadata"

    const-string p2, "key"

    const-string/jumbo v0, "value"

    .line 44
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->configureMetadataTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private convertToWordSense(Landroid/database/Cursor;)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
    .locals 14

    const-string v0, "short_def"

    .line 288
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "full_def"

    .line 289
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "example_sentence"

    .line 290
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getBase64Service()Lcom/amazon/kcp/wordwise/util/IBase64Service;

    move-result-object v3

    .line 294
    new-instance v13, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    const-string v4, "id"

    .line 295
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v4, "term_id"

    .line 296
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v4, ""

    if-nez v0, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/String;

    .line 297
    invoke-interface {v3, v0}, Lcom/amazon/kcp/wordwise/util/IBase64Service;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_1

    move-object v8, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 298
    invoke-interface {v3, v1}, Lcom/amazon/kcp/wordwise/util/IBase64Service;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    :goto_1
    if-nez v2, :cond_2

    move-object v9, v4

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 299
    invoke-interface {v3, v2}, Lcom/amazon/kcp/wordwise/util/IBase64Service;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    :goto_2
    const-string v0, "pos_types_label"

    .line 300
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "lemma"

    .line 301
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "sources_label"

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 169
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on close"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 83
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v1, 0x0

    .line 84
    :try_start_0
    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryContract;->GLOSS_WORD_SENSE_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 92
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v1

    .line 90
    :cond_1
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->convertToWordSense(Landroid/database/Cursor;)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    .line 92
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 84
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_2

    .line 92
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SqliteException"

    invoke-interface {v0, v2, v3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 194
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "id"

    .line 195
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTermLength()I
    .locals 2

    const-string v0, "maxTermLength"

    .line 275
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getRevision()Ljava/lang/Integer;
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 215
    new-instance v0, Ljava/lang/Integer;

    const-string v1, "revision"

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSimilarWords(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 138
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 139
    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryContract;->SIMILAR_WORDS_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 140
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v1, "lemma"

    .line 143
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 139
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 146
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
.end method

.method public getTermTerminatorList()Ljava/util/List;
    .locals 3

    .line 258
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "termTerminatorList"

    .line 260
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ",\t;\t.\t\"\t\'\t!\t?"

    :cond_0
    const-string v2, "\t"

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTokenSeparator()Ljava/lang/String;
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "tokenSeparator"

    .line 245
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, " "

    :cond_0
    return-object v0
.end method

.method public getWordSenses(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 110
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 111
    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryContract;->ALL_GLOSS_WORD_SENSE_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 112
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->convertToWordSense(Landroid/database/Cursor;)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getShortDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getSenseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_2
    if-eqz p1, :cond_3

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_4

    .line 123
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 67
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDowngrade "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 58
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public open()Z
    .locals 4

    .line 158
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossDictionaryDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on open"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
