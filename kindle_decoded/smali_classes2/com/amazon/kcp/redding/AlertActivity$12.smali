.class Lcom/amazon/kcp/redding/AlertActivity$12;
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

    .line 463
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$12;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$12;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$12;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-static {p2}, Lcom/amazon/kcp/redding/AlertActivity;->access$000(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$12;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 468
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$12;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
