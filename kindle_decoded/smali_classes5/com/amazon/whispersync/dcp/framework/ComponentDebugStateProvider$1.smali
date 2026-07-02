.class Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider$1;
.super Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;
.source "ComponentDebugStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugStateProvider;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 0

    return-void
.end method
