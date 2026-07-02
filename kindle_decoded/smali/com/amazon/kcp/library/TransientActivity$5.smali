.class Lcom/amazon/kcp/library/TransientActivity$5;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/TransientActivity;->updateUIState(Lcom/amazon/kindle/model/content/ContentState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;

.field final synthetic val$downloadState:Lcom/amazon/kindle/model/content/ContentState;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/model/content/ContentState;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/TransientActivity$5;->val$downloadState:Lcom/amazon/kindle/model/content/ContentState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->val$downloadState:Lcom/amazon/kindle/model/content/ContentState;

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 489
    :cond_0
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->downloading_notitle:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_downloading:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 492
    :cond_1
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 495
    :cond_2
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_3

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->download_paused:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_paused:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 498
    :cond_3
    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v1, :cond_6

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->download_queued:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_queued:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 493
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->download_interrupted:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_interrupted:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 487
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$400(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_opening:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$500(Lcom/amazon/kcp/library/TransientActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$5;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    sget v2, Lcom/amazon/kindle/krl/R$string;->transient_done:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method
