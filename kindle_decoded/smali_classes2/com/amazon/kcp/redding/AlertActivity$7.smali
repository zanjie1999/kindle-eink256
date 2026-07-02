.class Lcom/amazon/kcp/redding/AlertActivity$7;
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

.field final synthetic val$book2:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    iput-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->val$book2:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 415
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->val$book2:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenStoreDetailPageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 416
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    iget-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p2}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 418
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 419
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$7;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
