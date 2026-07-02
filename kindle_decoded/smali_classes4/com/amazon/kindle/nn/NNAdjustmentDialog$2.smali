.class Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;
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

.field final synthetic val$qhMinWordsText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nn/NNAdjustmentDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    iput-object p2, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->val$qhMinWordsText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->access$200(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 71
    :cond_1
    iget-object p3, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    invoke-static {p3, p2}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->access$300(Lcom/amazon/kindle/nn/NNAdjustmentDialog;I)I

    move-result p2

    sput p2, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->quickHighlightMinWords:I

    .line 72
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 74
    sget p2, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->quickHighlightMinWords:I

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->setQuickHighlightMinWords(I)V

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->val$qhMinWordsText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/amazon/kindle/nn/NNAdjustmentDialog$2;->this$0:Lcom/amazon/kindle/nn/NNAdjustmentDialog;

    invoke-static {p2}, Lcom/amazon/kindle/nn/NNAdjustmentDialog;->access$400(Lcom/amazon/kindle/nn/NNAdjustmentDialog;)Ljava/lang/String;

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
