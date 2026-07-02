.class Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;
.super Ljava/lang/Object;
.source "FacebookShareTargetGridItem.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->publishFeedDialog(Lcom/facebook/Session;Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callingActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;)V
    .locals 0

    .line 362
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;->val$callingActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3

    .line 367
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    const-string p2, "post_id"

    .line 371
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$200()Ljava/lang/String;

    .line 375
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$string;->toast_message_facebook_post_succeeded:I

    .line 376
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 377
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;->val$callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$200()Ljava/lang/String;

    .line 384
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;->val$callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 386
    :cond_1
    instance-of p1, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz p1, :cond_2

    .line 388
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$200()Ljava/lang/String;

    .line 390
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;->val$callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 393
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v2, "There was a problem sharing to facebook"

    invoke-static {p1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$string;->toast_message_facebook_post_failed:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 398
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$3;->val$callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
