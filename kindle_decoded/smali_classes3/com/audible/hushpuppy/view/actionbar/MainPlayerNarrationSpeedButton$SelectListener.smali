.class Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;
.super Ljava/lang/Object;
.source "MainPlayerNarrationSpeedButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    invoke-static {v0}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->access$200(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)Lcom/audible/hushpuppy/controller/LocationSeekerController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->setNarrationSpeedSettingFromDialog(I)V

    .line 221
    iget-object p2, p0, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$SelectListener;->this$0:Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;

    invoke-static {p2}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;->access$300(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
