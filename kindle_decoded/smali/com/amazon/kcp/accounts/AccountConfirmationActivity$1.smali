.class Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;
.super Ljava/lang/Object;
.source "AccountConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->updateUserName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

.field final synthetic val$firstName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    iput-object p2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->val$firstName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 158
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    sget v2, Lcom/amazon/kindle/thirdparty/R$id;->account_confirmation_welcome_text:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->val$firstName:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/thirdparty/R$string;->account_confirmation_welcome_no_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/thirdparty/R$string;->account_confirmation_welcome:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->val$firstName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    iget-object v3, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->val$firstName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->access$002(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/accounts/AccountConfirmationActivity$1;->this$0:Lcom/amazon/kcp/accounts/AccountConfirmationActivity;

    invoke-static {v2}, Lcom/amazon/kcp/accounts/AccountConfirmationActivity;->access$100(Lcom/amazon/kcp/accounts/AccountConfirmationActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
