.class public Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;
.super Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;
.source "GlossOverrideDBHelper.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/feedback/IGlossOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper$Builder;
    }
.end annotation


# static fields
.field private static DATABASE_VERSION:I = 0x0

.field private static final INVALID_OVERRIDE_SENSE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private glossSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    sput v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->DATABASE_VERSION:I

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->DATABASE_VERSION:I

    invoke-direct {p0, v0, p2, v1}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 59
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->glossSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private applyOverrides(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->getGlossSidecar()Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;->getGlossDictionary()Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    move-result-object v0

    .line 210
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 213
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v5}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getOriginalSenseId()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 215
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v1, v6}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setSuppressed(Z)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 227
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setOverride(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 233
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setOverride(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v7, :cond_4

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    .line 240
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setOverride(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;)V

    goto/16 :goto_0

    .line 244
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    invoke-virtual {v1, v6}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->setSuppressed(Z)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private setupBookLevelMap(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "corrected_sense_id"

    const-string v9, "original_sense_id"

    .line 123
    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "book_level"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 129
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 131
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private setupInstanceMaps(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 97
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 98
    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v1, p4

    .line 102
    sget-object p3, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->INSTANCE_RANGE_QUERY:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 104
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "position"

    .line 105
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "corrected_sense_id"

    .line 106
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "original_sense_id"

    .line 109
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 108
    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private updateBookOverride(I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 303
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 304
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 306
    sget-object v4, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->DOMINANT_QUERY:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "corrected_sense_id"

    .line 309
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 311
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    .line 312
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    :try_start_0
    sget-object v3, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->INSERT_BOOK_LEVEL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 316
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v5, "Sqlite exception"

    invoke-interface {v3, v4, v5, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v3, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add Book Level Query "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public addGlossOverride(Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 261
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getOriginalGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getTermId()I

    move-result v0

    .line 266
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getGlossWordSense()Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;->getTermId()I

    move-result v1

    .line 267
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getOriginalSenseId()I

    move-result v2

    .line 268
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getSenseId()I

    move-result v3

    .line 269
    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;->getStartPosition()I

    move-result p1

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 271
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 272
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 273
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p1

    const/4 p1, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 274
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const/4 p1, 0x5

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    .line 278
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 281
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->INSERT_INSTANCE_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "Sqlite exception"

    invoke-interface {v0, v1, v3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :goto_0
    invoke-direct {p0, v2}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->updateBookOverride(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method public close()V
    .locals 4

    .line 156
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on close"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected getGlossSidecar()Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->glossSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->glossSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->glossSidecar:Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->CREATE_INSTANCE_LEVEL_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->CREATE_BOOK_LEVEL_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "Override filter database has been created."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public open()Z
    .locals 4

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on open"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public overrideSenses(Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;II)V"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->setupInstanceMaps(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 179
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-direct {p0, p2}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->setupBookLevelMap(Ljava/util/Map;)V

    .line 182
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->applyOverrides(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public truncateInstanceLevelOverride()V
    .locals 4

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 329
    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideContract;->DELETE_INSTANCE_LEVEL_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "Instance level overrides have been truncated."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossOverrideDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "Sqlite exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
