.class Lcom/amazon/device/sync/platform/SyncModule$2$1;
.super Ljava/lang/Object;
.source "SyncModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/platform/SyncModule$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/sync/platform/SyncModule$2;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/platform/SyncModule$2;Ljava/lang/Runnable;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/device/sync/platform/SyncModule$2$1;->this$1:Lcom/amazon/device/sync/platform/SyncModule$2;

    iput-object p2, p0, Lcom/amazon/device/sync/platform/SyncModule$2$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 77
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 78
    iget-object v0, p0, Lcom/amazon/device/sync/platform/SyncModule$2$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
