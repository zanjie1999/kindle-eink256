.class Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;
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
    name = "CancelListener"
.end annotation


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton$CancelListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/MainPlayerNarrationSpeedButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
