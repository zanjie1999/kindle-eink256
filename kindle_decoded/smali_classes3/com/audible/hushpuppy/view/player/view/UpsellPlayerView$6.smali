.class Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$6;
.super Ljava/lang/Object;
.source "UpsellPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseProcessingView()V
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

    .line 350
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$6;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 353
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$6;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->showCancelOrderDialog()V

    return-void
.end method
