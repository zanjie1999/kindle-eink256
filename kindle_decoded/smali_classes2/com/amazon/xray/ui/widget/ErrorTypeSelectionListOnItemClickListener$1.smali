.class Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener$1;
.super Ljava/lang/Object;
.source "ErrorTypeSelectionListOnItemClickListener.java"

# interfaces
.implements Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->showFeedbackTextInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener$1;->this$0:Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDialogSubmitPressed()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener$1;->this$0:Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->access$000(Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;)Lcom/amazon/xray/ui/widget/XrayInfoCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->resetInfoCardAndShowThankYouMessage()V

    return-void
.end method
