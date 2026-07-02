.class Lcom/amazon/kcp/redding/AlertActivity$17;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 538
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$17;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 541
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$17;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
