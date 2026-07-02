.class Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$7;
.super Ljava/lang/Object;
.source "MultiplexingLocalPlayerEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->onLicenseAcquired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$7;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$7;->this$0:Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;

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

    .line 128
    invoke-virtual {v1}, Lcom/audible/mobile/player/LocalPlayerEventListener;->onLicenseAcquired()V

    goto :goto_0

    :cond_0
    return-void
.end method
