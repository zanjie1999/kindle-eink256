.class Lcom/amazon/kcp/redding/AlertActivity$16;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 524
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$16;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 527
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$16;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity$16;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/AlertActivity;->access$000(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    return-void
.end method
