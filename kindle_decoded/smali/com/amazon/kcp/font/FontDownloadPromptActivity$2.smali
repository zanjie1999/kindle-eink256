.class Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;
.super Ljava/lang/Object;
.source "FontDownloadPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontDownloadPromptActivity;->showPromptDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/FontDownloadPromptActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;->this$0:Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 61
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;->this$0:Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    new-instance p2, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;

    invoke-static {p1}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->access$100(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->REJECTED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    invoke-direct {p2, v0, v1}, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;-><init>(Ljava/lang/String;Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;)V

    invoke-static {p1, p2}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->access$002(Lcom/amazon/kcp/font/FontDownloadPromptActivity;Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;)Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;

    .line 62
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadPromptActivity$2;->this$0:Lcom/amazon/kcp/font/FontDownloadPromptActivity;

    invoke-static {p1}, Lcom/amazon/kcp/font/FontDownloadPromptActivity;->access$200(Lcom/amazon/kcp/font/FontDownloadPromptActivity;)V

    return-void
.end method
