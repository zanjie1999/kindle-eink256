.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->loadPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field final synthetic val$newPlayer:Lcom/audible/mobile/player/Player;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 451
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;->val$newPlayer:Lcom/audible/mobile/player/Player;

    iput-object p3, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;->val$newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;->val$newPlayer:Lcom/audible/mobile/player/Player;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$9;->val$newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->loadPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method
