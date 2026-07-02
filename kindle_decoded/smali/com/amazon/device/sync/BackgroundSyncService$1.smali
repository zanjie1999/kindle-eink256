.class Lcom/amazon/device/sync/BackgroundSyncService$1;
.super Ljava/lang/Object;
.source "BackgroundSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/BackgroundSyncService;->showText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/BackgroundSyncService;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/BackgroundSyncService;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/device/sync/BackgroundSyncService$1;->this$0:Lcom/amazon/device/sync/BackgroundSyncService;

    iput-object p2, p0, Lcom/amazon/device/sync/BackgroundSyncService$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService$1;->this$0:Lcom/amazon/device/sync/BackgroundSyncService;

    invoke-virtual {v0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/BackgroundSyncService$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
