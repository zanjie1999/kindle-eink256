.class Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;
.super Ljava/lang/Object;
.source "DeckOverviewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

.field final synthetic val$flashcardsListView:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->val$flashcardsListView:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->val$flashcardsListView:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->val$flashcardsListView:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;

    .line 219
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->access$700(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    sget-object v3, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 221
    invoke-virtual {v0, v3}, Lcom/amazon/kedu/flashcards/views/CardView;->getContentSize(Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    .line 222
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kedu/flashcards/R$dimen;->fc_card_side_content_ghl_max_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    sget-object v4, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 223
    invoke-virtual {v0, v4}, Lcom/amazon/kedu/flashcards/views/CardView;->getContentSize(Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->this$0:Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    .line 224
    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kedu/flashcards/R$dimen;->fc_card_side_content_ghl_max_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 220
    invoke-virtual {v1, v2, v3}, Lcom/amazon/kedu/flashcards/DeckAdapter;->setLoadableContentArea(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;->val$flashcardsListView:Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
