.class public Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "SeeMoreTextActivity.java"


# static fields
.field public static final INTENT_CARD_ID:Ljava/lang/String; = "cardID"

.field public static final INTENT_CARD_SIDE:Ljava/lang/String; = "cardSide"

.field public static final INTENT_DECK_ID:Ljava/lang/String; = "deckID"

.field public static final INTENT_TEXT_SIZE:Ljava/lang/String; = "textSizeId"

.field public static final INTENT_TEXT_STYLE:Ljava/lang/String; = "textStyleId"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 30
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_see_more_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 33
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->text_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;->textView:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "deckID"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cardID"

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardSide"

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/flashcards/utils/Side;

    .line 41
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v0

    const/4 v1, -0x1

    const-string v3, "textStyleId"

    .line 43
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 46
    iget-object v4, p0, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 49
    :cond_0
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getReaderUITypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 52
    iget-object v4, p0, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const-string v3, "textSizeId"

    .line 55
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;->textView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSide(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 64
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 75
    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
