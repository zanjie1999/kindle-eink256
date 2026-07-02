.class Lcom/amazon/bookwizard/payoff/PayoffFragment$2;
.super Ljava/lang/Object;
.source "PayoffFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/payoff/PayoffFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/payoff/PayoffFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/payoff/PayoffFragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment$2;->this$0:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment$2;->this$0:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->access$000(Lcom/amazon/bookwizard/payoff/PayoffFragment;)Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffFragment$2;->this$0:Lcom/amazon/bookwizard/payoff/PayoffFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/payoff/PayoffFragment;->access$000(Lcom/amazon/bookwizard/payoff/PayoffFragment;)Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/bookwizard/payoff/PayoffFragment$PayoffListener;->onNext()V

    return-void
.end method
