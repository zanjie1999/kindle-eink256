.class public Lcom/amazon/e3oseventhandler/ToggleHandler;
.super Ljava/lang/Object;
.source "ToggleHandler.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;


# instance fields
.field private mToggler:Lcom/amazon/e3oseventhandler/Toggler;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/ToggleHandler;->getToggler(Landroid/view/View;)Lcom/amazon/e3oseventhandler/Toggler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ToggleHandler;->mToggler:Lcom/amazon/e3oseventhandler/Toggler;

    return-void
.end method


# virtual methods
.method public getToggler(Landroid/view/View;)Lcom/amazon/e3oseventhandler/Toggler;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 42
    :cond_0
    instance-of v1, p1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 43
    new-instance v0, Lcom/amazon/e3oseventhandler/RadioButtonControls;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/RadioButtonControls;-><init>(Landroid/view/View;)V

    return-object v0

    .line 44
    :cond_1
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 45
    new-instance v0, Lcom/amazon/e3oseventhandler/CheckBoxControls;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/CheckBoxControls;-><init>(Landroid/view/View;)V

    return-object v0

    .line 46
    :cond_2
    instance-of v1, p1, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    .line 47
    new-instance v0, Lcom/amazon/e3oseventhandler/ToggleButtonControls;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/ToggleButtonControls;-><init>(Landroid/view/View;)V

    return-object v0

    .line 48
    :cond_3
    instance-of v1, p1, Landroid/widget/Switch;

    if-eqz v1, :cond_4

    .line 49
    new-instance v0, Lcom/amazon/e3oseventhandler/SwitchControls;

    invoke-direct {v0, p1}, Lcom/amazon/e3oseventhandler/SwitchControls;-><init>(Landroid/view/View;)V

    :cond_4
    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/ToggleHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ToggleHandler;->mToggler:Lcom/amazon/e3oseventhandler/Toggler;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/amazon/e3oseventhandler/Toggler;->doToggle(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
