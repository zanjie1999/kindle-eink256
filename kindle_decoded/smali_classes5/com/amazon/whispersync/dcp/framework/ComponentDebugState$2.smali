.class Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;
.super Ljava/lang/Object;
.source "ComponentDebugState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->deleteRow(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

.field final synthetic val$rowId:Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->val$rowId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$100(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->val$table:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$000(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->this$0:Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;->access$200(Lcom/amazon/whispersync/dcp/framework/ComponentDebugState;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%s = ?"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/ComponentDebugState$2;->val$rowId:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
