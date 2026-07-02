.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AidlBackedPlayerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnbindingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;


# direct methods
.method private constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V
    .locals 0

    .line 701
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 717
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1900(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 705
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1900(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 711
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1900(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1900(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)V

    return-void
.end method
