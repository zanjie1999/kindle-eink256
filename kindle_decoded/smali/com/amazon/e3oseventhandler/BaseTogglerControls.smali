.class public Lcom/amazon/e3oseventhandler/BaseTogglerControls;
.super Ljava/lang/Object;
.source "BaseTogglerControls.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/Toggler;


# static fields
.field private static final DEFAULT_VAL:I = 0x0

.field static final OPTIMIZED_CHECK_ON_TOGGLE_ON:I = 0x1

.field private static final RET_FLAGS_E3OSLIB:Ljava/lang/String; = "Ret-Flags-E3osLib"


# instance fields
.field private mMainView:Landroid/view/View;

.field private mRetFlags:I

.field private mToggleFilter:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->isSupported(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mMainView:Landroid/view/View;

    .line 34
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->setFilter(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/BaseTogglerControls;)Landroid/view/View;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mMainView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public clearRetFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mRetFlags:I

    return-void
.end method

.method public doToggle(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mToggleFilter:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mMainView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 71
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->getRetFlags()I

    move-result v0

    const-string v1, "Ret-Flags-E3osLib"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->clearRetFlags()V

    return p1
.end method

.method public getRetFlags()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mRetFlags:I

    return v0
.end method

.method public isSupported(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processActionUp()V
    .locals 0

    return-void
.end method

.method public setFilter(Landroid/view/View;)Z
    .locals 0

    .line 40
    new-instance p1, Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;-><init>(Lcom/amazon/e3oseventhandler/BaseTogglerControls;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mToggleFilter:Landroid/view/View$OnTouchListener;

    const/4 p1, 0x1

    return p1
.end method

.method public setRetFlags(I)V
    .locals 1

    .line 104
    iget v0, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mRetFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mRetFlags:I

    return-void
.end method

.method public setToggleFilter(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->mToggleFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method
