.class public Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;
.super Lcom/amazon/kedu/flashcards/DeckAdapter;
.source "DeckOverviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;
    }
.end annotation


# instance fields
.field private cardListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

.field private cardModelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

.field private markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

.field private sortedCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;)V
    .locals 0

    .line 56
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckAdapter;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    .line 28
    new-instance p2, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;

    invoke-direct {p2, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;)V

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->cardModelComparator:Ljava/util/Comparator;

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->sortCards()V

    .line 58
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->listener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    .line 60
    iput-object p4, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->cardListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    return-void
.end method

.method private getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v2, " "

    if-ne p1, v1, :cond_0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_accessibility_card_position:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    const/4 p2, 0x1

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_front:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_back:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_accessibility_double_tab_edit:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadCardSideContent(Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;Lcom/amazon/kedu/flashcards/models/CardSideModel;Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/view/View;
    .locals 1

    .line 123
    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-virtual {p0, p4}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentWidth(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result v0

    invoke-virtual {p0, p4}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getLoadableContentHeight(Lcom/amazon/kedu/flashcards/utils/Side;)I

    move-result p4

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->setGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method


# virtual methods
.method public getCard(Lcom/amazon/kedu/flashcards/views/CardView;)Lcom/amazon/kedu/flashcards/models/CardModel;
    .locals 1

    .line 234
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$500(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCard(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->sortedCards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object p1
.end method

.method public getCardMarkedForDeletion()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getAllCardsCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCard(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 144
    check-cast p2, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;

    add-int/lit8 p3, p1, 0x1

    if-nez p2, :cond_0

    .line 149
    new-instance p2, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$1;)V

    .line 152
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    sget v3, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_text_back_view:I

    const/4 v4, 0x0

    .line 153
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    .line 152
    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$302(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    .line 154
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    sget v3, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_text_front_view:I

    .line 155
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    .line 154
    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$102(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    .line 156
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    sget v3, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_ghl_front_view:I

    .line 157
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 156
    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$002(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 158
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    sget v3, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_ghl_back_view:I

    .line 159
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;IZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 158
    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$202(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 162
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->setTag(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->setScaleX(F)V

    .line 171
    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->setScaleY(F)V

    .line 173
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 175
    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;

    .line 177
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$integer;->fc_deck_overview_card_side_max_lines:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 178
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$100(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->recheckExpandability(I)V

    .line 179
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;->recheckExpandability(I)V

    .line 180
    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$502(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 182
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$100(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 183
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 185
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget v4, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_accessibility_image_content:I

    .line 188
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$200(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_accessibility_image_content:I

    .line 190
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCardSideContentDescription(Lcom/amazon/kedu/flashcards/utils/Side;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    invoke-virtual {v0, p3}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->listener:Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setEventListener(Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object p3

    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->cardListener:Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;

    invoke-virtual {p3, v0}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardEventListener(Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;)V

    .line 197
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/DeckOverviewSwipableView;->getCardView()Lcom/amazon/kedu/flashcards/views/CardView;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/amazon/kedu/flashcards/DeckAdapter;->loadCardWhenReady(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V

    .line 199
    iget-object p3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    if-ne p3, p1, :cond_1

    .line 201
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->markAsDeleted()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->undoDeletion()V

    :goto_0
    return-object p2
.end method

.method public indexOf(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->sortedCards:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->cardModelComparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method protected loadCardContent(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/views/CardView;)V
    .locals 5

    .line 112
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;

    .line 114
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$000(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$100(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->loadCardSideContent(Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;Lcom/amazon/kedu/flashcards/models/CardSideModel;Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/view/View;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;Landroid/view/View;)V

    .line 117
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$200(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;->access$300(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter$FlashcardListItemHolder;)Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->loadCardSideContent(Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kedu/flashcards/views/LineLimitedTextView;Lcom/amazon/kedu/flashcards/models/CardSideModel;Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/view/View;

    move-result-object p1

    .line 118
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kedu/flashcards/views/CardView;->setCardSideBodyView(Lcom/amazon/kedu/flashcards/utils/Side;Landroid/view/View;)V

    return-void
.end method

.method public markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->sortCards()V

    .line 67
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public sortCards()V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckAdapter;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->sortedCards:Ljava/util/ArrayList;

    .line 73
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->cardModelComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
