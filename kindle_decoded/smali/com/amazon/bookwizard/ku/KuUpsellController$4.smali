.class Lcom/amazon/bookwizard/ku/KuUpsellController$4;
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

    .line 258
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$4;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$4;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ku/KuUpsellController;->access$202(Lcom/amazon/bookwizard/ku/KuUpsellController;Z)Z

    .line 263
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/KuUpsellController$4;->this$0:Lcom/amazon/bookwizard/ku/KuUpsellController;

    invoke-static {p1}, Lcom/amazon/bookwizard/ku/KuUpsellController;->access$300(Lcom/amazon/bookwizard/ku/KuUpsellController;)Lcom/amazon/bookwizard/ui/BookWizardActivity;

    move-result-object p1

    const-string p2, "bookwizard"

    invoke-virtual {p1, p2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->goToStore(Ljava/lang/String;)V

    return-void
.end method
