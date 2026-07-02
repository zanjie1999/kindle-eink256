.class Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;
.super Ljava/lang/Object;
.source "BookIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/seekbar/BookIconView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/seekbar/BookIconView;

.field final synthetic val$audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/seekbar/BookIconView;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;->this$0:Lcom/audible/hushpuppy/view/seekbar/BookIconView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;->val$audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/audible/hushpuppy/view/seekbar/BookIconView$1;->val$audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToEBook()Z

    return-void
.end method
