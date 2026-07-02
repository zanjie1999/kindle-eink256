.class public final Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelperFactory;
.super Ljava/lang/Object;
.source "SQLiteRecoveryOpenHelperFactory.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;

    const-string v2, "delegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    return-object v1
.end method
