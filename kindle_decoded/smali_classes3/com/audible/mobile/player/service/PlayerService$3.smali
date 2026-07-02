.class Lcom/audible/mobile/player/service/PlayerService$3;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/PlayerService;->registerReceivers(Lcom/audible/mobile/player/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;

.field final synthetic val$player:Lcom/audible/mobile/player/Player;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$3;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$3;->val$player:Lcom/audible/mobile/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1279
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$3;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    new-instance v1, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService$3;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/mobile/player/service/PlayerService$3;->val$player:Lcom/audible/mobile/player/Player;

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V

    invoke-static {v0, v1}, Lcom/audible/mobile/player/service/PlayerService;->access$1802(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    .line 1281
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$3;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1282
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$3;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$1800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
