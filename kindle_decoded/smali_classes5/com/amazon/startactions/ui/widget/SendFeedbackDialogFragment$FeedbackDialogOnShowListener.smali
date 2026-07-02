.class Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;
.super Ljava/lang/Object;
.source "SendFeedbackDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeedbackDialogOnShowListener"
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;->dialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 276
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 285
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 286
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;->dialog:Landroid/app/Dialog;

    .line 287
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$dimen;->startactions_dialog_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 286
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/SendFeedbackDialogFragment$FeedbackDialogOnShowListener;->dialog:Landroid/app/Dialog;

    sget v2, Lcom/amazon/kindle/ea/R$id;->startactions_dialog_feedback_container:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 294
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 295
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method
