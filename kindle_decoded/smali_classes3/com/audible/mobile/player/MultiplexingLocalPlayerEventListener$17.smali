.class Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;
.super Ljava/lang/Object;
.source "MultiplexingLocalPlayerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

.field final synthetic val$newValue:Lcom/audible/mobile/player/NarrationSpeed;

.field final synthetic val$oldValue:Lcom/audible/mobile/player/NarrationSpeed;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    iput-object p2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->val$oldValue:Lcom/audible/mobile/player/NarrationSpeed;

    iput-object p3, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->val$newValue:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    invoke-static {v0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->access$000(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/player/LocalPlayerEventListener;

    .line 258
    iget-object v2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->val$oldValue:Lcom/audible/mobile/player/NarrationSpeed;

    iget-object v3, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;->val$newValue:Lcom/audible/mobile/player/NarrationSpeed;

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    goto :goto_0

    :cond_0
    return-void
.end method
