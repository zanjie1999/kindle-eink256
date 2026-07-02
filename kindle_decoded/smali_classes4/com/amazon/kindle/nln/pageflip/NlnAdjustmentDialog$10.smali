.class Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;
.super Ljava/lang/Object;
.source "NlnAdjustmentDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;F)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    iput p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    .line 210
    iget p2, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;->val$scale:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    sput p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    .line 211
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$10;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1800(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Breadcrumb shift: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "px"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->updateBreadcrumbShift()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
