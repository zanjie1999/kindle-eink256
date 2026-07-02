.class Lcom/amazon/kindle/toast/snackbar/Snackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/amazon/kindle/toast/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/toast/snackbar/Snackbar$2;->this$0:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->access$200(Lcom/amazon/kindle/toast/snackbar/Snackbar;I)V

    return-void
.end method
