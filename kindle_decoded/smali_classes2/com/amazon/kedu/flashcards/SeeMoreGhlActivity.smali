.class public Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "SeeMoreGhlActivity.java"


# static fields
.field private static final IMAGE_SCALE:I = 0x2

.field public static final INTENT_CARD_ID:Ljava/lang/String; = "cardID"

.field public static final INTENT_CARD_SIDE:Ljava/lang/String; = "cardSide"

.field public static final INTENT_DECK_ID:Ljava/lang/String; = "deckID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 36
    sget p1, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_see_more_ghl:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "deckID"

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cardID"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardSide"

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/utils/Side;

    .line 43
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSide(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    const v0, 0x1020002

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->ghl_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity$1;-><init>(Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kedu/flashcards/models/CardSideModel;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
