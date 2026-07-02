.class Lcom/facebook/widget/WebDialog$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-static {p1}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 213
    iget-object p1, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {p1}, Lcom/facebook/widget/WebDialog;->dismiss()V

    return-void
.end method
