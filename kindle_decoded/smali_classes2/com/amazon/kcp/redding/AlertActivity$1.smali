.class Lcom/amazon/kcp/redding/AlertActivity$1;
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

    .line 354
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$1;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$1;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    const/4 p2, -0x3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 358
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$1;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
