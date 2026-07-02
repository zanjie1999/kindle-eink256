.class Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;
.super Ljava/lang/Object;
.source "MultiplexingLocalPlayerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->onError(Lcom/audible/mobile/player/exception/PlayerException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

.field final synthetic val$e:Lcom/audible/mobile/player/exception/PlayerException;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/exception/PlayerException;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    iput-object p2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->val$e:Lcom/audible/mobile/player/exception/PlayerException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

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

    .line 57
    iget-object v2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->val$e:Lcom/audible/mobile/player/exception/PlayerException;

    invoke-virtual {v1, v2}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onError(Lcom/audible/mobile/player/exception/PlayerException;)V

    .line 62
    iget-object v2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->val$e:Lcom/audible/mobile/player/exception/PlayerException;

    invoke-virtual {v2}, Lcom/audible/mobile/player/exception/PlayerException;->getLegacyDetailMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;->val$e:Lcom/audible/mobile/player/exception/PlayerException;

    invoke-virtual {v3}, Lcom/audible/mobile/player/exception/PlayerException;->getError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
