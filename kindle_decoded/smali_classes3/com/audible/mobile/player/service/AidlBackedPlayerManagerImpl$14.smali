.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$14;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$speed:Lcom/audible/mobile/player/NarrationSpeed;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 0

    .line 519
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$14;->val$speed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$14;->val$speed:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method
