.class Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;
.super Ljava/lang/Object;
.source "SQLiteDatabaseWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

.field final synthetic val$nullColumnHack:Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$nullColumnHack:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    iget-object v0, v0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->mInner:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$nullColumnHack:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    .line 143
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper$4;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
