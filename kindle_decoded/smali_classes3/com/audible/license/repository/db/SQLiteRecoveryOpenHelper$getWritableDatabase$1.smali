.class final Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SQLiteRecoveryOpenHelperFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;


# direct methods
.method constructor <init>(Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;->this$0:Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;->this$0:Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;

    invoke-static {v0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;->access$getDelegate$p(Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    const-string v1, "delegate.writableDatabase"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/audible/license/repository/db/SQLiteRecoveryOpenHelper$getWritableDatabase$1;->invoke()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
