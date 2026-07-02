.class Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;
.super Ljava/lang/Object;
.source "ComponentDebugState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->addOrUpdateRow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

.field final synthetic val$rowId:Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$rowId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$table:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$values:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$rowId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$table:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$000(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$100(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$200(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
