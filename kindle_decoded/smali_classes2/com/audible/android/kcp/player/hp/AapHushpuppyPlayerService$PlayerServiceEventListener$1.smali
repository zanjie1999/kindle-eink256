.class Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;
.super Ljava/lang/Object;
.source "AapHushpuppyPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;->this$1:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;->this$1:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;

    iget-object v0, v0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$600(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;->this$1:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;

    iget-object v1, v1, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$600(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$string;->player_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
