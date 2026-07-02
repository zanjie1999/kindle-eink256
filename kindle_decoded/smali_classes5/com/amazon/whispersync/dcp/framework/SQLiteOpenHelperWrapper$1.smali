.class Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteOpenHelperWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->onCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->onOpen(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->onUpgrade(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V

    return-void
.end method
