.class Lcom/amazon/kcp/reader/ReaderActivity$20;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->setDialogListeners(ILandroid/app/Dialog;Lcom/amazon/kcp/reader/DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 2873
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$20;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 2876
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$20;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1602(Lcom/amazon/kcp/reader/ReaderActivity;Z)Z

    return-void
.end method
