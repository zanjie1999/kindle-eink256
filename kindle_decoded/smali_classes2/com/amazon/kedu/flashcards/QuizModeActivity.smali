.class public Lcom/amazon/kedu/flashcards/QuizModeActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "QuizModeActivity.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;
.implements Lcom/amazon/kedu/flashcards/views/CardView$CardEventListener;
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;
    }
.end annotation


# static fields
.field public static final INTENT_DECK_ID:Ljava/lang/String; = "deckId"

.field public static final RESTORABLE_CARD_SIDE_DEFAULT:Lcom/amazon/kedu/flashcards/utils/Side;


# instance fields
.field private cardPileAdapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

.field private cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

.field private committedWithButton:Z

.field private controlsEnabled:Z

.field private correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

.field private currentDraggingSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

.field private deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private dismissAlphaDuration:J

.field private dismissLabel:Landroid/widget/TextView;

.field private emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

.field private incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

.field private pausingVisibleCardId:Ljava/lang/String;

.field private pausingVisibleCardSide:Lcom/amazon/kedu/flashcards/utils/Side;

.field private quizAccessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

.field private quizControlContainer:Landroid/widget/LinearLayout;

.field private quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

.field private quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    sput-object v0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->RESTORABLE_CARD_SIDE_DEFAULT:Lcom/amazon/kedu/flashcards/utils/Side;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/QuizModeActivity;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/flashcards/QuizModeActivity;Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->resetQuiz(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kedu/flashcards/QuizModeActivity;)Lcom/amazon/kedu/flashcards/CardPileView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    return-object p0
.end method

.method private calculateDismissLabelAlpha(F)F
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 708
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3fc0a3d700000000L    # 0.12999999523162842

    mul-double v0, v0, v2

    double-to-float p1, v0

    const v0, 0x3eae147b    # 0.34f

    add-float/2addr p1, v0

    return p1
.end method

.method private getQuizProgressContentDescription()Ljava/lang/String;
    .locals 5

    .line 568
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_accessibility_no_progress:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_accessibility_complete:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_1
    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_accessibility_progress:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 580
    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 579
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTopCard()Lcom/amazon/kedu/flashcards/views/QuizCardView;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/CardPileView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizCardView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private hideDismissLabel()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissAlphaDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private isValidDeckEvent(Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;)Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;->getDeck()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private onMenuAddCard()Z
    .locals 4

    const-string v0, "KindleFlashcards"

    const-string v1, "AddCardFromQuiz"

    .line 619
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    sget-object v2, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->startEditCardActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    const/4 v0, 0x1

    return v0
.end method

.method private onMenuEditDeck()Z
    .locals 3

    const-string v0, "KindleFlashcards"

    const-string v1, "DeckOverviewFromQuiz"

    .line 626
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deckID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private onMenuHome()Z
    .locals 2

    const-string v0, "KindleFlashcards"

    const-string v1, "ViewAllDecksFromQuiz"

    .line 587
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method private onMenuReset()Z
    .locals 2

    const-string v0, "KindleFlashcards"

    const-string v1, "StartDeckAgain"

    .line 610
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markQuizOpenedFromResetMenuButtonClicked()V

    .line 612
    sget-object v0, Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;->All:Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->resetQuiz(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    const/4 v0, 0x1

    return v0
.end method

.method private onMenuShuffle()Z
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    .line 601
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/CardPileView;->shuffle()V

    .line 603
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizUpdatedEvent()V

    return v1
.end method

.method private onQuizCardExitSection(Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)V
    .locals 1

    .line 502
    sget-object v0, Lcom/amazon/kedu/flashcards/QuizModeActivity$4;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->hideDismissLabel()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V

    goto :goto_0

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V

    :goto_0
    return-void
.end method

.method private onQuizCompletedEvent()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    return-void
.end method

.method private onQuizDeckUpdatedEvent()V
    .locals 4

    .line 554
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizUpdatedEvent()V

    .line 556
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kedu/flashcards/R$bool;->fc_quiz_progress_bar_expanded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    :goto_0
    return-void
.end method

.method private onQuizResetEvent()V
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$bool;->fc_quiz_progress_bar_expanded:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V

    return-void
.end method

.method private onQuizUpdatedEvent()V
    .locals 6

    .line 537
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v3

    add-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 538
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->setScore(D)V

    .line 539
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->setLearnButtonEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v1

    iget-object v4, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v4}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v5}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->updateProgress(IIIZ)V

    .line 542
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->getQuizProgressContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v3, 0x8

    .line 550
    :cond_3
    invoke-direct {p0, v3}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setControlsVisibility(I)V

    return-void
.end method

.method private reportThisCardAnswered()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getIncorrectCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->reportQuizStarted(ILcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    :cond_0
    return-void
.end method

.method private resetQuiz(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->reset(Lcom/amazon/kedu/flashcards/models/QuizDeckModel$ResetType;)V

    return-void
.end method

.method private setControlsEnabled(Z)V
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->controlsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 654
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->controlsEnabled:Z

    .line 656
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private setControlsVisibility(I)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizControlContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private startEditCardActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V
    .locals 0

    .line 363
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)Landroid/content/Intent;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSeeMoreGhlActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/SeeMoreGhlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deckID"

    .line 399
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardID"

    .line 400
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardSide"

    .line 401
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSeeMoreTextActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/SeeMoreTextActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deckID"

    .line 386
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardID"

    .line 387
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cardSide"

    .line 388
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 390
    sget-object p1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 391
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->fc_font_light_large:I

    const-string p2, "textStyleId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 671
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN_QuizMode:I

    return p1

    .line 679
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p1

    return p1

    .line 684
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_QuizMode:I

    return p1

    .line 690
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p1

    return p1
.end method

.method public onClickCorrect(Landroid/view/View;)V
    .locals 1

    const-string p1, "KindleFlashcards"

    const-string v0, "MarkCardCorrectClick"

    .line 252
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->reportThisCardAnswered()V

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    .line 255
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->commitCardPositive()V

    return-void
.end method

.method public onClickIncorrect(Landroid/view/View;)V
    .locals 1

    const-string p1, "KindleFlashcards"

    const-string v0, "MarkCardIncorrectClick"

    .line 260
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->reportThisCardAnswered()V

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    .line 263
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->commitCardNegative()V

    return-void
.end method

.method public onClickedEdit(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 2

    .line 357
    invoke-static {}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->markCardEditedFromQuizMode()V

    .line 358
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getTopUndecidedCard()Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->startEditCardActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    return-void
.end method

.method public onClickedSeeMore(Lcom/amazon/kedu/flashcards/views/CardView;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getTopUndecidedCard()Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object p1

    .line 371
    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getSide(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->startSeeMoreGhlActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->startSeeMoreTextActivity(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget p1, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_quiz_mode:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->controlsEnabled:Z

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deckId"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 92
    sget-object v0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->RESTORABLE_CARD_SIDE_DEFAULT:Lcom/amazon/kedu/flashcards/utils/Side;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardSide:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardId:Ljava/lang/String;

    .line 95
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_controls_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizControlContainer:Landroid/widget/LinearLayout;

    .line 96
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_controls_correct_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizButton;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    .line 97
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_controls_incorrect_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizButton;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    .line 98
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_card_pile:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/CardPileView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    .line 99
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->dismiss_label:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissLabel:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizProgressView:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    .line 101
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->empty_deck_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    .line 102
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_results:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    .line 103
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->accessibility_quiz_controls:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizAccessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    .line 105
    sget-object v0, Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;->NONE:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->currentDraggingSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 107
    new-instance v0, Lcom/amazon/kedu/flashcards/CardPileAdapter;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/CardPileAdapter;-><init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileAdapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    .line 109
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizAccessibilityView:Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->setAccessibilityView(Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->setCompletedView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileAdapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->setAdapter(Lcom/amazon/kedu/flashcards/CardPileAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileView:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {v0, p0}, Lcom/amazon/kedu/flashcards/CardPileView;->setQuizPileAnimatorListener(Lcom/amazon/kedu/flashcards/CardPileView$QuizPileAnimatorListener;)V

    .line 115
    new-instance v0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;-><init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;Lcom/amazon/kedu/flashcards/QuizModeActivity$1;)V

    .line 116
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissLabel:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_pile_dismiss_label_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissAlphaDuration:J

    .line 122
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->emptyDeckView:Lcom/amazon/kedu/flashcards/views/EmptyDeckView;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/EmptyDeckView;->setDeckId(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    new-instance v1, Lcom/amazon/kedu/flashcards/QuizModeActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity$1;-><init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->setOnLearnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->quizResultsView:Lcom/amazon/kedu/flashcards/views/QuizResultsView;

    new-instance v1, Lcom/amazon/kedu/flashcards/QuizModeActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity$2;-><init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->setOnRestartClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 149
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 291
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$menu;->fc_menu_quiz_mode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/flashcards/events/Event;",
            ">(TT;)V"
        }
    .end annotation

    .line 338
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 339
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->isValidDeckEvent(Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizUpdatedEvent()V

    .line 343
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/QuizCompletedEvent;

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizCompletedEvent()V

    goto :goto_0

    .line 347
    :cond_0
    instance-of p1, p1, Lcom/amazon/kedu/flashcards/events/QuizResetEvent;

    if-eqz p1, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizResetEvent()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onMenuHome()Z

    move-result p1

    return p1

    .line 315
    :cond_0
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_shuffle:I

    if-ne v0, v1, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onMenuShuffle()Z

    move-result p1

    return p1

    .line 319
    :cond_1
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_reset:I

    if-ne v0, v1, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onMenuReset()Z

    move-result p1

    return p1

    .line 323
    :cond_2
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_add_card:I

    if-ne v0, v1, :cond_3

    .line 325
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onMenuAddCard()Z

    move-result p1

    return p1

    .line 327
    :cond_3
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_edit_deck:I

    if-ne v0, v1, :cond_4

    .line 329
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onMenuEditDeck()Z

    move-result p1

    return p1

    .line 332
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 228
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->getTopCard()Lcom/amazon/kedu/flashcards/views/QuizCardView;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getTopUndecidedCard()Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->getVisibleSide()Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardSide:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 233
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardId:Ljava/lang/String;

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->RESTORABLE_CARD_SIDE_DEFAULT:Lcom/amazon/kedu/flashcards/utils/Side;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardSide:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v0, ""

    .line 238
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onPileAnimationEnd()V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V

    .line 421
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V

    :goto_0
    const/4 v0, 0x1

    .line 424
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setControlsEnabled(Z)V

    return-void
.end method

.method public onPileAnimationStart()V
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setControlsEnabled(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 299
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 301
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->menu_shuffle:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->controlsEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 302
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->menu_reset:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->controlsEnabled:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onQuizCardDragging(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
    .locals 2

    const/4 p1, 0x0

    .line 448
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setControlsEnabled(Z)V

    .line 450
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->getPercentCommitted()F

    move-result p1

    .line 451
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->getPileSection()Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    move-result-object p2

    .line 453
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->currentDraggingSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    if-eq v0, p2, :cond_0

    .line 455
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizCardExitSection(Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)V

    .line 457
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->currentDraggingSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    .line 460
    :cond_0
    sget-object p2, Lcom/amazon/kedu/flashcards/QuizModeActivity$4;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->currentDraggingSection:Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setControlsEnabled(Z)V

    .line 493
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->hideDismissLabel()V

    goto :goto_0

    .line 479
    :cond_2
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getUndecidedCount()I

    move-result p2

    if-le p2, v0, :cond_6

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_3

    .line 484
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->calculateDismissLabelAlpha(F)F

    move-result p2

    .line 486
    :cond_3
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->dismissLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 471
    :cond_4
    iget-boolean p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    if-nez p2, :cond_6

    .line 473
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->incorrectButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {p2, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->setHighlightIntensity(F)V

    goto :goto_0

    .line 463
    :cond_5
    iget-boolean p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->committedWithButton:Z

    if-nez p2, :cond_6

    .line 465
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->correctButton:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-virtual {p2, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->setHighlightIntensity(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onQuizCardDraggingFinish(Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V
    .locals 1

    .line 430
    sget-object v0, Lcom/amazon/kedu/flashcards/QuizModeActivity$4;->$SwitchMap$com$amazon$kedu$flashcards$CardPileView$QuizPileSection:[I

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;->getPileSection()Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->reportThisCardAnswered()V

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->reportThisCardAnswered()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 166
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->cardPileAdapter:Lcom/amazon/kedu/flashcards/CardPileAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 170
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getReaderUITypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v3, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kedu/flashcards/QuizModeActivity$3;-><init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;Landroid/graphics/Typeface;)V

    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x21

    .line 175
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->getTopCard()Lcom/amazon/kedu/flashcards/views/QuizCardView;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getTopUndecidedCard()Lcom/amazon/kedu/flashcards/models/CardModel;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity;->pausingVisibleCardSide:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setVisibleSide(Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizDeckUpdatedEvent()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 160
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 247
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    const-class v1, Lcom/amazon/kedu/flashcards/events/QuizUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/AbstractThemedActionBarActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->onQuizDeckUpdatedEvent()V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 218
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 219
    invoke-virtual {p1, v1}, Landroid/view/View;->setTextDirection(I)V

    :cond_0
    return-void
.end method
