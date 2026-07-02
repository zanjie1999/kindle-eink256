.class Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;
.super Ljava/lang/Object;
.source "AccountConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    iput-object p2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 187
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 190
    iget-object v1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->account_confirmation_email:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->val$email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    iget-object v3, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->val$email:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->access$202(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$2;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    invoke-static {v2}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->access$100(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
