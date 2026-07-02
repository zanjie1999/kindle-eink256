.class public final Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteRecoveryOpenHelperFactory.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSQLiteRecoveryOpenHelperFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SQLiteRecoveryOpenHelperFactory.kt\ncom/audible/license/repository/db/SQLiteRecoveryOpenHelper\n*L\n1#1,53:1\n*E\n"
.end annotation


# instance fields
.field private final configuration:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final logger$delegate:Lkotlin/Lazy;

.field private recoveredOnce:Z


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->configuration:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iput-object p2, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 22
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDelegate$p(Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method

.method private final getDatabase(Lkotlin/jvm/functions/Function0;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            ">;)",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;"
        }
    .end annotation

    .line 28
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    iget-boolean v1, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->recoveredOnce:Z

    if-nez v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to recover database ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") by recreating it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->recoveredOnce:Z

    .line 37
    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->configuration:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v0, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 38
    invoke-direct {p0, p1}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getDatabase(Lkotlin/jvm/functions/Function0;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getLogger()Lorg/slf4j/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database exception has reproduced in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") while opening the database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 32
    new-instance p1, Lcom/audible/license/repository/db/UnrecoverableSQLiteException;

    invoke-direct {p1, v0}, Lcom/audible/license/repository/db/UnrecoverableSQLiteException;-><init>(Landroid/database/sqlite/SQLiteException;)V

    throw p1
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 43
    new-instance v0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;

    invoke-direct {v0, p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;-><init>(Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;)V

    invoke-direct {p0, v0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getDatabase(Lkotlin/jvm/functions/Function0;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
