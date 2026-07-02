.class Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;
.super Ljava/lang/Object;
.source "SQLiteDatabaseWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

.field final synthetic val$sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;->val$sql:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$3;->val$sql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
