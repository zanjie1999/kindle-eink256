.class Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;
.super Ljava/lang/Object;
.source "MiniPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->setUiToDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onCancelDownload()V

    .line 442
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$6;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->access$200(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V

    return-void
.end method
