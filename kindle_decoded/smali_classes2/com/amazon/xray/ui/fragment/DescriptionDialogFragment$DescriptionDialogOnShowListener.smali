.class Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;
.super Ljava/lang/Object;
.source "DescriptionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionDialogOnShowListener"
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 142
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 145
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 147
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/xray/R$dimen;->xray_size_description_dialog_min_width:I

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;->dialog:Landroid/app/Dialog;

    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_dialog_description_container:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 156
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 160
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->applyReaderBrightness(Landroid/view/Window;)V

    .line 162
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;->dialog:Landroid/app/Dialog;

    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_dialog_description_cancel_button:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
