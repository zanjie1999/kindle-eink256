.class Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->initializeActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/util/FacebookHelper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;->this$0:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 4

    .line 87
    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogDidComplete(Landroid/os/Bundle;)Z

    move-result p1

    .line 88
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Did user complete? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completion gesture - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Post id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 95
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Successfully posted something to facebook!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;->this$0:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$100(Lcom/amazon/kindle/socialsharing/util/FacebookHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;->this$0:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    .line 98
    invoke-static {p2}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$100(Lcom/amazon/kindle/socialsharing/util/FacebookHelper;)Landroid/app/Activity;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->toast_message_facebook_post_failed:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 97
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string p2, "Error posting to facebook: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
