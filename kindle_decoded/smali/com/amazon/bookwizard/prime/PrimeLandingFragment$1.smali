.class Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;
.super Ljava/lang/Object;
.source "PrimeLandingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;->this$0:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;->this$0:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->access$000(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$1;->this$0:Lcom/amazon/bookwizard/prime/PrimeLandingFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment;->access$000(Lcom/amazon/bookwizard/prime/PrimeLandingFragment;)Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/bookwizard/prime/PrimeLandingFragment$PrimeLandingListener;->onStart()V

    :cond_0
    return-void
.end method
