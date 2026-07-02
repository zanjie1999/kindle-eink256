.class Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;
.super Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;
.source "SQLiteContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    const/4 p1, 0x0

    .line 34
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->onCreateDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    return-void
.end method

.method public onUpgrade(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper$OpenHelper;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderHelper;->onUpgradeDatabase(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V

    return-void
.end method
