.class Lcom/audible/hushpuppy/view/player/view/FullPlayerView$4;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/FullPlayerView;->configurePlayerControlOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/FullPlayerView;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$4;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 233
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/FullPlayerView$4;->this$0:Lcom/audible/hushpuppy/view/player/view/FullPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->jumpForward(I)V

    return-void
.end method
