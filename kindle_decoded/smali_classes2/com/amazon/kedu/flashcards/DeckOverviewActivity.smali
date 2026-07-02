.class public Lcom/amazon/kedu/flashcards/DeckOverviewActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "DeckOverviewActivity.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;
.implements Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;


# static fields
.field public static final INTENT_DECK_ID:Ljava/lang/String; = "deckID"


# instance fields
.field private adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

.field private deckId:Ljava/lang/String;

.field private deckTitleButtonSwitcher:Landroid/widget/ViewSwitcher;

.field private deckTitleDoneEditingButton:Landroid/view/View;

.field private deckTitleEdit:Landroid/widget/TextView;

.field private deckTitleText:Landroid/widget/EditText;

.field private emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

.field private flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleDoneEditingButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleButtonSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startEditCardActivity(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/models/CardModel;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deleteCard(Lcom/amazon/kedu/flashcards/models/CardModel;)V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    return-object p0
.end method

.method private deleteCard(Lcom/amazon/kedu/flashcards/models/CardModel;)V
    .locals 2

    .line 259
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->deleteCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->initTitle()V

    return-void
.end method

.method private initTitle()V
    .locals 6

    .line 246
    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_activity_label:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_activity_label:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_accessibility_showing_x_cards:I

    .line 248
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private startEditCardActivity(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    if-nez p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    sget-object p2, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {p0, p1, p2}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)Landroid/content/Intent;

    move-result-object p1

    .line 371
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startEditingDeckTitle()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private startSeeMoreGhlActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deckID"

    .line 344
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardID"

    .line 345
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardSide"

    .line 346
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSeeMoreTextActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deckID"

    .line 325
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardID"

    .line 326
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardSide"

    .line 327
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 329
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p3, p1, :cond_0

    sget p1, Lcom/amazon/kedu/flashcards/R$style;->fc_card_side_front_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->fc_font_light_medium:I

    :goto_0
    const-string p2, "textStyleId"

    .line 330
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p3, p1, :cond_1

    .line 335
    sget p1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_font_large_text_size:I

    const-string p2, "textSizeId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private stopEditingDeckTitle()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method


# virtual methods
.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 433
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN_Lists_DeckOverview:I

    return p1

    .line 441
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_NonNLN_Lists:I

    return p1

    .line 446
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 448
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_Lists_DeckOverview:I

    return p1

    .line 452
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Lists:I

    return p1
.end method

.method public onClickedDoneEditingDeckTitle(Landroid/view/View;)V
    .locals 2

    .line 414
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->stopEditingDeckTitle()V

    .line 415
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->setName(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-direct {v0, v1}, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    return-void
.end method

.method public onClickedEdit(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 354
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markCardEditedFromDeckOverview()V

    .line 355
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCard(Lcom/amazon/kedu/flashcards/views/CardView;)Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object p1

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startEditCardActivity(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method

.method public onClickedEditDeckTitle(Landroid/view/View;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startEditingDeckTitle()V

    return-void
.end method

.method public onClickedSeeMore(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->getCard(Lcom/amazon/kedu/flashcards/views/CardView;)Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object p1

    .line 310
    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSide(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startSeeMoreGhlActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startSeeMoreTextActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 93
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "deckID"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 100
    sget p1, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_deck_overview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 102
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->deck_title_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    .line 103
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->deck_title_edit_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleEdit:Landroid/widget/TextView;

    .line 104
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->edit_title_button_switcher:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleButtonSwitcher:Landroid/widget/ViewSwitcher;

    .line 105
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->deck_title_done_editing_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleDoneEditingButton:Landroid/view/View;

    .line 107
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$1;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$2;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$3;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 179
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleEdit:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_accessibility_edit_deck_title:I

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    sget p1, Lcom/amazon/kedu/flashcards/R$id;->flashcards_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;

    .line 185
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-direct {v0, p0, v2, p1, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;-><init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    .line 186
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$4;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->setDeckOverviewInteractionListener(Lcom/amazon/kedu/flashcards/views/DeckOverviewListView$DeckOverviewInteractionListener;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;->setAdapter(Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;)V

    .line 211
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity$5;-><init>(Lcom/amazon/kedu/flashcards/DeckOverviewActivity;Lcom/amazon/kedu/flashcards/views/DeckOverviewListView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->deck_overview_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    .line 232
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->setDeckId(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 236
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->initTitle()V

    .line 238
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 281
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 282
    sget v1, Lcom/amazon/kedu/flashcards/R$menu;->fc_deck_overview_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 284
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 386
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    if-eqz v0, :cond_0

    .line 388
    check-cast p1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    .line 389
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-ne p1, v0, :cond_1

    .line 391
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleEdit:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_accessibility_edit_deck_title:I

    .line 393
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    sget p1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_overview_accessibility_deck_title_saved:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deckTitleText:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    .line 397
    :cond_0
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;

    if-eqz v0, :cond_1

    .line 399
    check-cast p1, Lcom/amazon/kedu/flashcards/events/CardUpdatedEvent;

    .line 400
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->flashcardDeck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-ne p1, v0, :cond_1

    .line 402
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "KindleFlashcards"

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    const-string v0, "ViewAllDecksFromDeckOverview"

    .line 294
    invoke-static {v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    goto :goto_0

    .line 297
    :cond_0
    sget v2, Lcom/amazon/kedu/flashcards/R$id;->action_add_new_card:I

    if-ne v0, v2, :cond_1

    const-string v0, "AddCardFromDeckOverview"

    .line 299
    invoke-static {v1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0, v0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->startEditCardActivity(Lcom/amazon/kedu/flashcards/models/CardModel;Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 303
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 267
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->deleteCard(Lcom/amazon/kedu/flashcards/models/CardModel;)V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->markedForDeletion:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 273
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->markForDeletion(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 377
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 379
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->initTitle()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 69
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 70
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardSidesSwappedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 71
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardSideTextUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 72
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 73
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardAddedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckOverviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckNameChangedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 82
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardSidesSwappedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 83
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardSideTextUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 84
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardDeletedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 85
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/CardAddedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
