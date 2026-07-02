.class public final Lcom/audible/license/repository/db/UnrecoverableSQLiteException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteRecoveryOpenHelperFactory.kt"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Unable to recover from a SQLiteException while opening the database"

    .line 52
    invoke-direct {p0, v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
