.class final Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWorkOnExecutor$1;
.super Ljava/lang/Object;
.source "CoverLoadingTaskManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executePendingWorkOnExecutor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CoverLoadingTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWorkOnExecutor$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$executePendingWorkOnExecutor$1;->this$0:Lcom/amazon/kcp/cover/CoverLoadingTaskManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->executePendingWork()V

    return-void
.end method
