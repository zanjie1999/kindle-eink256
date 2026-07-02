.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$13;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->rewind(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$millis:I


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;I)V
    .locals 0

    .line 508
    iput p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$13;->val$millis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 1

    .line 511
    iget v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$13;->val$millis:I

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->rewind(I)V

    return-void
.end method
