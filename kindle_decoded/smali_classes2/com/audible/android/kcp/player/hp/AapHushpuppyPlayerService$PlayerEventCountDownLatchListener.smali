.class public Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AapHushpuppyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PlayerEventCountDownLatchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;


# direct methods
.method protected constructor <init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 528
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$700(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 534
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$700(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerEventCountDownLatchListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$700(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
