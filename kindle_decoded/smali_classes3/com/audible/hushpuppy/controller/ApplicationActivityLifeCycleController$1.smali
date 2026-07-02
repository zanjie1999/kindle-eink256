.class Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;
.super Ljava/lang/Object;
.source "ApplicationActivityLifeCycleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;->this$0:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;->this$0:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->access$000(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Application is BACKGROUNDED"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;->this$0:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->access$200(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
