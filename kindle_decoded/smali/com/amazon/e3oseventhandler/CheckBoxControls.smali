.class public Lcom/amazon/e3oseventhandler/CheckBoxControls;
.super Lcom/amazon/e3oseventhandler/BaseTogglerControls;
.source "CheckBoxControls.java"


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isSupported(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    instance-of p1, p1, Landroid/widget/CheckBox;

    return p1
.end method

.method public processActionUp()V
    .locals 1

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->setRetFlags(I)V

    return-void
.end method
