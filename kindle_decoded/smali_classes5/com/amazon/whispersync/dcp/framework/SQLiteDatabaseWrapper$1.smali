.class Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;
.super Ljava/lang/Object;
.source "SQLiteDatabaseWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$whereArgs:[Ljava/lang/String;

.field final synthetic val$whereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$whereClause:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$whereArgs:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$whereClause:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->val$whereArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
