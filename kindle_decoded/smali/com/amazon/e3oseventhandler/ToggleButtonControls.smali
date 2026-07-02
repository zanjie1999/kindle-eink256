.class public Lcom/amazon/e3oseventhandler/ToggleButtonControls;
.super Lcom/amazon/e3oseventhandler/BaseTogglerControls;
.source "ToggleButtonControls.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isSupported(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_0
    instance-of p1, p1, Landroid/widget/ToggleButton;

    return p1
.end method
