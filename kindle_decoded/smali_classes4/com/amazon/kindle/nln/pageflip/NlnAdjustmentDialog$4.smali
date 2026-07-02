.class Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;
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

    .line 92
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1, p2}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;I)J

    move-result-wide p1

    sput-wide p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->maxJumpDuration:J

    .line 96
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$500(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Max jump duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$4;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    sget-wide v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->maxJumpDuration:J

    invoke-static {p3, v0, v1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$400(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
