.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 0

    .line 272
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    return-void
.end method
