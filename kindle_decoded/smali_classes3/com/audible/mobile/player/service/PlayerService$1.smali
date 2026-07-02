.class Lcom/audible/mobile/player/service/PlayerService$1;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/PlayerService;->bindToService(Landroid/content/Context;Lcom/audible/mobile/player/service/PlayerService$OnBind;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bindingContext:Landroid/content/Context;

.field final synthetic val$onBind:Lcom/audible/mobile/player/service/PlayerService$OnBind;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/service/PlayerService$OnBind;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$bindingContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$onBind:Lcom/audible/mobile/player/service/PlayerService$OnBind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 903
    invoke-static {}, Lcom/audible/mobile/player/service/PlayerService;->access$1600()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Bound to {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 904
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 905
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$bindingContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$bindingContext:Landroid/content/Context;

    const-class v2, Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 907
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$bindingContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$bindingContext:Landroid/content/Context;

    const-class v2, Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 909
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$1;->val$onBind:Lcom/audible/mobile/player/service/PlayerService$OnBind;

    check-cast p2, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    invoke-interface {p1, p2}, Lcom/audible/mobile/player/service/PlayerService$OnBind;->bound(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 915
    invoke-static {}, Lcom/audible/mobile/player/service/PlayerService;->access$1600()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Unbound from {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
