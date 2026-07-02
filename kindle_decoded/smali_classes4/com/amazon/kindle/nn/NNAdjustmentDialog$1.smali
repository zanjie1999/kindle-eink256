.class Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;
.super Ljava/lang/Object;
.source "NNAdjustmentDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nn/NNAdjustmentDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

.field final synthetic val$scaleText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nn/NNAdjustmentDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    iput-object p2, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;->val$scaleText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    invoke-static {p1, p2}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->access$000(Lcom/amazon/kindle/nn/NNAdjustmentDialog;I)F

    move-result p1

    sput p1, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->animationDurationScale:F

    .line 46
    iget-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;->val$scaleText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$1;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    invoke-static {p2}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->access$100(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Ljava/lang/String;

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
