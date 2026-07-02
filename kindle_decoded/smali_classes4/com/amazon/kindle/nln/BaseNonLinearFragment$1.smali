.class Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;
.super Ljava/lang/Object;
.source "BaseNonLinearFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFragmentShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFirstLayout()V

    .line 661
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
