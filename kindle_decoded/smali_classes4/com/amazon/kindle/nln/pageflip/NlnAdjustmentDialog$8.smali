.class Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;
.super Ljava/lang/Object;
.source "NlnAdjustmentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 165
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 169
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog$8;->this$0:Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1300(Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1402(Z)Z

    .line 171
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NlnAdjustmentDialog;->access$1400()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    .line 172
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 174
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 179
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_0
    return-void
.end method
