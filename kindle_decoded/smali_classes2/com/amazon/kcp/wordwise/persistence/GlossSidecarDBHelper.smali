.class public Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;
.super Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;
.source "GlossSidecarDBHelper.java"

# interfaces
.implements Lcom/amazon/kcp/wordwise/gloss/IGlossSidecar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper$Builder;
    }
.end annotation


# static fields
.field private static final FTUE_MARKETPLACES_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;

.field private static final TARGET_LANGUAGE_DELIMITER:Ljava/lang/String; = ","

.field private static final database_version:I = 0x1


# instance fields
.field private dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    const-string p1, "metadata"

    const-string p2, "key"

    const-string/jumbo v0, "value"

    .line 46
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->configureMetadataTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private convertToSidecarEntry(Landroid/database/Cursor;)Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;
    .locals 8

    const-string v0, "sense_id"

    .line 298
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 299
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->getGlossDictionary()Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;->getGlossWordSense(I)Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 302
    new-instance v0, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    const-string v1, "start"

    .line 304
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v1, "end"

    .line 305
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "difficulty"

    .line 306
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v1, "low_confidence"

    .line 307
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;-><init>(Lcom/amazon/kcp/wordwise/gloss/GlossWordSense;IIIZ)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 144
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SqliteException on close"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getAcr()Ljava/lang/String;
    .locals 1

    const-string v0, "acr"

    .line 156
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFtueMarketplaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ftuxMarketplaces"

    .line 268
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGlossDictionary()Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openDictionary(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->dictionary:Lcom/amazon/kcp/wordwise/dictionary/IGlossDictionary;

    return-object v0
.end method

.method public getSidecarBookRevision()Ljava/lang/String;
    .locals 1

    const-string v0, "bookRevision"

    .line 244
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSidecarEntriesBetween(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "start BETWEEN ? AND ?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x1

    .line 93
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, p1

    const-string v2, "glosses"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_2

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->convertToSidecarEntry(Landroid/database/Cursor;)Lcom/amazon/kcp/wordwise/gloss/GlossSidecarEntry;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 115
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "SQLiteException"

    invoke-interface {p2, v1, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSidecarRevision()Ljava/lang/Integer;
    .locals 2

    const-string v0, "sidecarRevision"

    .line 227
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->getMetadataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 69
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

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

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 60
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

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
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/persistence/GlossSidecarDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "SQLiteException on open"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
