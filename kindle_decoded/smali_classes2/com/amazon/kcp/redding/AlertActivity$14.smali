.class Lcom/amazon/kcp/redding/AlertActivity$14;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/AlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/AlertActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/AlertActivity;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 488
    new-instance p1, Landroid/content/Intent;

    const-string p2, "e3os.intent.action.RegistrationOptions"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 495
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 492
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/redding/AlertActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch registration account on Eink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 494
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 495
    iget-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$14;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 496
    throw p1
.end method
