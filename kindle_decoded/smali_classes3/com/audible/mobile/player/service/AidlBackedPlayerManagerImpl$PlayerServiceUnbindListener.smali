.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AidlBackedPlayerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerServiceUnbindListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V
    .locals 0

    .line 743
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2000(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/policy/UnbindPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/policy/Policy;->action()V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$2100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method
