.class Lcom/audible/mobile/player/identity/NoOpPlayer$1;
.super Ljava/lang/Object;
.source "NoOpPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/identity/NoOpPlayer;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/identity/NoOpPlayer;Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 0

    .line 138
    iput-object p2, p0, Lcom/audible/mobile/player/identity/NoOpPlayer$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 141
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer$1;->val$listener:Lcom/audible/mobile/player/LocalPlayerEventListener;

    new-instance v9, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    sget-object v3, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    sget-object v7, Lcom/audible/mobile/player/NarrationSpeed;->NORMAL:Lcom/audible/mobile/player/NarrationSpeed;

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/audible/mobile/player/PlayerStatusSnapshot;-><init>(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/State;IIILcom/audible/mobile/player/NarrationSpeed;F)V

    invoke-virtual {v0, v9}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    return-void
.end method
