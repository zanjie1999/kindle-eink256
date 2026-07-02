.class Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCompletionPolicyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/PlayerService;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/service/PlayerService$1;)V
    .locals 0

    .line 491
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;-><init>(Lcom/audible/mobile/player/service/PlayerService;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 495
    const-class p1, Lcom/audible/mobile/player/policy/OnCompletionPolicy;

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object v0

    .line 496
    invoke-virtual {v0, p1}, Lcom/audible/mobile/framework/ComponentRegistry;->hasComponent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/policy/OnCompletionPolicy;

    invoke-interface {p1}, Lcom/audible/mobile/player/policy/Policy;->action()V

    goto :goto_0

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 503
    :try_start_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/Player;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$OnCompletionPolicyListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 506
    throw p1
.end method
