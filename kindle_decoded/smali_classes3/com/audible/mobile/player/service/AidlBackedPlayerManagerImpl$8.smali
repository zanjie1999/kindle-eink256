.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$8;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->setAudioDataSourceWithoutPrepare(Lcom/audible/mobile/player/AudioDataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 440
    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$8;->val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$8;->val$audioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method
