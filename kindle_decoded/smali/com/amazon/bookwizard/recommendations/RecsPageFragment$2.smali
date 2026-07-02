.class Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;
.super Ljava/lang/Object;
.source "RecsPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->access$000(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-static {p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->access$000(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/ui/view/ExpandableHeightGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-static {v0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->access$100(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$2;->this$0:Lcom/amazon/bookwizard/recommendations/RecsPageFragment;

    invoke-static {v0}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment;->access$100(Lcom/amazon/bookwizard/recommendations/RecsPageFragment;)Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/bookwizard/recommendations/RecsPageFragment$RecommendationsListener;->onKuSignUpClicked(I)V

    :cond_1
    return-void
.end method
