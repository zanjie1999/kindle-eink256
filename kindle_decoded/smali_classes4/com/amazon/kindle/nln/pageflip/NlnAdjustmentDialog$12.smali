.class Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$12;
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


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$12;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    .line 241
    sput p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->pageOnscreenCutoff:F

    .line 242
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$12;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$2000(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Percentage of page visible to hide breadcrumb: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
