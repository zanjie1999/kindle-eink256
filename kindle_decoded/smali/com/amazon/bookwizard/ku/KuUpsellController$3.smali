.class Lcom/amazon/bookwizard/ku/KuUpsellController$3;
.super Ljava/lang/Object;
.source "KuUpsellController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ku/KuUpsellController;->postSignupFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ku/KuUpsellController;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$3;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 255
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$3;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ku/KuUpsellController;->access$202(Lcom/amazon/bookwizard/ku/KuUpsellController;Z)Z

    .line 256
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$3;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/KuUpsellController;->onSignUp()V

    return-void
.end method
