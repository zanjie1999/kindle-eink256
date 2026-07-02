.class Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$NegativeListener;
.super Ljava/lang/Object;
.source "SleepTimerMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegativeListener"
.end annotation


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu$NegativeListener;-><init>(Lcom/audible/hushpuppy/view/actionbar/SleepTimerMenu;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
