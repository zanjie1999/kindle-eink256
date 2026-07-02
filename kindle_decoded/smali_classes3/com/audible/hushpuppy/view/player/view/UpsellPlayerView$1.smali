.class Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;
.super Ljava/lang/Object;
.source "UpsellPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPrePurchaseView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->upsellPlayPauseButtonClicked()V

    .line 273
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$1;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->access$000(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V

    return-void
.end method
