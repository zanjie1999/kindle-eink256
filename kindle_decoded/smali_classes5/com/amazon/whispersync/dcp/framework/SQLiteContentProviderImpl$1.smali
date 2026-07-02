.class Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$1;
.super Ljava/lang/Object;
.source "SQLiteContentProviderImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
