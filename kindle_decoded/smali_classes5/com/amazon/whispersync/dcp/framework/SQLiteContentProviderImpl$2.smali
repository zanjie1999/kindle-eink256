.class Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;
.super Ljava/lang/Object;
.source "SQLiteContentProviderImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

.field final synthetic val$contentValues:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;Landroid/content/ContentValues;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;->val$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$2;->val$contentValues:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
