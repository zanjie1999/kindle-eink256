.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$2;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->registerPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/audible/mobile/player/PlayerServiceEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .locals 0

    .line 301
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$2;->val$listener:Lcom/audible/mobile/player/PlayerServiceEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$2;->val$listener:Lcom/audible/mobile/player/PlayerServiceEventListener;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V

    return-void
.end method
