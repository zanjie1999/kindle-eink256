.class public Lcom/amazon/e3oseventhandler/SwitchControls;
.super Lcom/amazon/e3oseventhandler/BaseTogglerControls;
.source "SwitchControls.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isSupported(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    instance-of p1, p1, Landroid/widget/Switch;

    return p1
.end method
