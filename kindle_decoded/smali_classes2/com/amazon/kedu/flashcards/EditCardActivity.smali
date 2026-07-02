.class public Lcom/amazon/kedu/flashcards/EditCardActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "EditCardActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;,
        Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;,
        Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;,
        Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;,
        Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;,
        Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACK_BG_COLOR:I

.field private static final DEFAULT_FRONT_BG_COLOR:I

.field private static final OVERLAY_BACK_BG_COLOR:I

.field private static final OVERLAY_FRONT_BG_COLOR:I

.field private static final SAVED_STATE_BACK_STRING:Ljava/lang/String; = "savedStateBackString"

.field private static final SAVED_STATE_FRONT_STRING:Ljava/lang/String; = "savedStateFrontString"

.field private static final SAVED_STATE_SWAPPED:Ljava/lang/String; = "savedStateSwapped"


# instance fields
.field private card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

.field private createAnotherMenu:Landroid/view/MenuItem;

.field private currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

.field private deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private hasGhlContent:Z

.field private hasTextContent:Z

.field private initiallyFocusedSide:Lcom/amazon/kedu/flashcards/utils/Side;

.field private isCanceled:Z

.field private mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

.field private shouldResizeGHL:Z

.field private sidesSwapped:Z

.field private viewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget v0, Lcom/amazon/kedu/flashcards/R$color;->fc_deck_overview_flashcard_frontside_background:I

    sput v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->DEFAULT_FRONT_BG_COLOR:I

    .line 38
    sget v0, Lcom/amazon/kedu/flashcards/R$color;->fc_deck_overview_flashcard_backside_background:I

    sput v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->DEFAULT_BACK_BG_COLOR:I

    .line 39
    sget v0, Lcom/amazon/kedu/flashcards/R$color;->fc_deck_overview_flashcard_frontside_overlay_background:I

    sput v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->OVERLAY_FRONT_BG_COLOR:I

    .line 40
    sget v0, Lcom/amazon/kedu/flashcards/R$color;->fc_deck_overview_flashcard_backside_overlay_background:I

    sput v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->OVERLAY_BACK_BG_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    .line 47
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasTextContent:Z

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasGhlContent:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->shouldResizeGHL:Z

    .line 50
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->isCanceled:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kedu/flashcards/EditCardActivity;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->shouldResizeGHL:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/amazon/kedu/flashcards/EditCardActivity;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->shouldResizeGHL:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method

.method static synthetic access$1600()I
    .locals 1

    .line 35
    sget v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->OVERLAY_FRONT_BG_COLOR:I

    return v0
.end method

.method static synthetic access$1700(Lcom/amazon/kedu/flashcards/EditCardActivity;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 35
    sget v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->OVERLAY_BACK_BG_COLOR:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 35
    sget v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->DEFAULT_FRONT_BG_COLOR:I

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .line 35
    sget v0, Lcom/amazon/kedu/flashcards/EditCardActivity;->DEFAULT_BACK_BG_COLOR:I

    return v0
.end method

.method private createEmptyCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;
    .locals 9

    .line 447
    new-instance v8, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    new-instance v2, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    const-string v1, ""

    invoke-direct {v2, v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;)V

    new-instance v3, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    sget-object v0, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    invoke-direct {v3, v0, v1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;-><init>(Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;-><init>(Ljava/lang/String;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;JJ)V

    return-object v8
.end method

.method private getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;
    .locals 1

    .line 472
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    if-eqz p1, :cond_2

    .line 474
    :cond_1
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getFront()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    return-object p1

    .line 478
    :cond_2
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getBack()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object p1

    return-object p1
.end method

.method private hasGhlContent()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$600(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$700(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasTextContent()Z
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initialize(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)V
    .locals 2

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    .line 202
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->access$900(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->initiallyFocusedSide:Lcom/amazon/kedu/flashcards/utils/Side;

    .line 203
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->access$1000(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->setMode(Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    .line 204
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->access$1100(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDeck(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 206
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->isNewCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->createEmptyCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->access$1200(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->get(Ljava/lang/String;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    :goto_0
    return-void
.end method

.method private initializeView(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;
    .locals 3

    .line 151
    new-instance p1, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity$1;)V

    .line 153
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->front_side:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$402(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Lcom/amazon/kedu/flashcards/views/CardSideView;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    .line 154
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->back_side:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/CardSideView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$502(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Lcom/amazon/kedu/flashcards/views/CardSideView;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    .line 156
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_edit_text_front_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$002(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 157
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_edit_text_back_view:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$102(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 158
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_ghl_front_view:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$602(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 159
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_card_content_ghl_back_view:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->inflateBodyView(IZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$702(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    .line 161
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 162
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;

    sget-object v2, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity$SideSizeChangeListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/utils/Side;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 164
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    .line 165
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->front_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object p2

    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity$SideClickListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private isNewCard()Z
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->NEW_DECK:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->ADD_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private reportEditCardEnded()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    iget-boolean v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->isCanceled:Z

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->reportEditCardEnded(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Z)V

    return-void
.end method

.method private resetChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    .line 432
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateView()V

    return-void
.end method

.method private saveCardSideTextChanges(Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V
    .locals 3

    .line 63
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->setText(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object p1

    new-instance v0, Lcom/amazon/kedu/flashcards/events/CardSideTextUpdatedEvent;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/kedu/flashcards/events/CardSideTextUpdatedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    :cond_0
    return-void
.end method

.method private setInitialFocus()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->initiallyFocusedSide:Lcom/amazon/kedu/flashcards/utils/Side;

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->initiallyFocusedSide:Lcom/amazon/kedu/flashcards/utils/Side;

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCurrentView()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 454
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 456
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    .line 457
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 458
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    .line 461
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->resetChanges()V

    .line 462
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private updateMenuOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateMenuOptions(Z)V

    return-void
.end method

.method private updateMenuOptions(Z)V
    .locals 3

    .line 389
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasTextContent()Z

    move-result v0

    .line 390
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasGhlContent()Z

    move-result v1

    .line 392
    iget-boolean v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasTextContent:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasGhlContent:Z

    if-ne v2, v1, :cond_0

    if-eqz p1, :cond_3

    .line 394
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasGhlContent:Z

    .line 395
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasTextContent:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 397
    :goto_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->createAnotherMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 399
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method

.method private updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 240
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V

    return-void
.end method

.method private updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V
    .locals 6

    .line 245
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne p1, v0, :cond_0

    .line 247
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v1

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$600(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v3

    sget-object p1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/views/CardSideView;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/CardSideView;

    move-result-object v1

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$700(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v3

    sget-object p1, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/views/CardSideView;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSideView(Lcom/amazon/kedu/flashcards/views/CardSideView;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-virtual {p4}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p4}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-virtual {p4}, Lcom/amazon/kedu/flashcards/models/CardSideModel;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p4

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getBodySize()Landroid/graphics/Point;

    move-result-object p5

    iget p5, p5, Landroid/graphics/Point;->x:I

    .line 222
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_card_side_content_ghl_max_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 221
    invoke-virtual {p2, p3, p4, p5, v0}, Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;->setGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)V

    .line 223
    invoke-virtual {p1, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p1, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setBodyView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 1

    .line 234
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 235
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateMenuOptions()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 640
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 644
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN_EditCardOrDeck:I

    return p1

    .line 648
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_NonNLN_EditCardOrDeck:I

    return p1

    .line 653
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 655
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_EditCardOrDeck:I

    return p1

    .line 659
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_EditCardOrDeck:I

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_edit_card_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 105
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    .line 107
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->initializeView(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    .line 110
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->initializeView(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    .line 112
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity$OutAnimationListener;-><init>(Lcom/amazon/kedu/flashcards/EditCardActivity;Lcom/amazon/kedu/flashcards/EditCardActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;-><init>(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->initialize(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)V

    .line 122
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->setInitialFocus()V

    .line 123
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateView()V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    .line 129
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 133
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 137
    invoke-static {}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->getCancelIcon()I

    move-result p1

    .line 138
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 140
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    sget-object v0, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    if-ne p1, v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kedu/flashcards/R$string;->fc_edit_card_edit_card_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/metrics/FlashcardsClickstreamMetricManager;->reportEditCardStarted(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    :cond_1
    return-void
.end method

.method public onCreateAnotherCard(Landroid/view/View;)V
    .locals 1

    const-string p1, "KindleFlashcards"

    const-string v0, "AddCardFromMultiple"

    .line 437
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->saveChanges()Z

    .line 440
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->createEmptyCard()Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    .line 441
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 442
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateCurrentView()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 259
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 260
    sget v1, Lcom/amazon/kedu/flashcards/R$menu;->fc_edit_card_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->NEW_DECK:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 264
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->action_create_another_card:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->createAnotherMenu:Landroid/view/MenuItem;

    .line 265
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 267
    :cond_0
    sget-object v1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    if-ne v0, v1, :cond_1

    .line 269
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->action_delete:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateMenuOptions(Z)V

    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 667
    invoke-super {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onDestroy()V

    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->reportEditCardEnded()V

    :cond_0
    return-void
.end method

.method public onFlipSidesClicked(Landroid/view/View;)V
    .locals 3

    const-string p1, "KindleFlashcards"

    const-string v0, "SwapCardSides"

    .line 310
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-boolean p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    .line 314
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 315
    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v1, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V

    .line 317
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->shouldResizeGHL:Z

    return-void
.end method

.method public onMenuDelete()Z
    .locals 3

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->isCanceled:Z

    .line 323
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->isNewCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/flashcards/data/DecksManager;->deleteCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMenuDone()Z
    .locals 2

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->isCanceled:Z

    .line 419
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->saveChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KindleFlashcards"

    const-string v1, "SaveCard"

    .line 422
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->action_delete:I

    if-ne v0, v1, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->onMenuDelete()Z

    move-result v0

    goto :goto_0

    .line 291
    :cond_1
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->action_done:I

    if-ne v0, v1, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->onMenuDone()Z

    move-result v0

    goto :goto_0

    .line 295
    :cond_2
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->action_create_another_card:I

    if-ne v0, v1, :cond_3

    .line 297
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->onCreateAnotherCard(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_4
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    new-instance v0, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->initialize(Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;)V

    .line 192
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v1, "savedStateFrontString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    const-string v1, "savedStateBackString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateSideView(Lcom/amazon/kedu/flashcards/utils/Side;Ljava/lang/String;)V

    const-string v0, "savedStateSwapped"

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    const/4 p1, 0x1

    .line 195
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->updateMenuOptions(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->initiallyFocusedSide:Lcom/amazon/kedu/flashcards/utils/Side;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kedu/flashcards/EditCardActivity$IntentHelper;->access$800(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/utils/Side;Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V

    .line 179
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savedStateFrontString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savedStateBackString"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    const-string v1, "savedStateSwapped"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public saveChanges()Z
    .locals 8

    .line 335
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasTextContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->hasGhlContent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    sget-object v2, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    if-ne v0, v2, :cond_0

    .line 339
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v2}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v3}, Lcom/amazon/kedu/flashcards/models/CardModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kedu/flashcards/data/DecksManager;->deleteCard(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/EditCardActivity;->isNewCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    .line 348
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;->CUSTOM:Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;

    .line 347
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kedu/flashcards/data/DecksManager;->newCard(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;Ljava/lang/String;Lcom/amazon/kedu/flashcards/models/CardSideModel$TYPE;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    goto :goto_0

    .line 352
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/models/CardModel;->swapSides()V

    .line 355
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->sidesSwapped:Z

    .line 356
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/amazon/kedu/flashcards/events/CardSidesSwappedEvent;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->deck:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->card:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;

    invoke-direct {v1, v2, v3}, Lcom/amazon/kedu/flashcards/events/CardSidesSwappedEvent;-><init>(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/events/EventBus;->publish(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$000(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->saveCardSideTextChanges(Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    .line 360
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->currentView:Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/EditCardActivity$ViewHolder;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->BACK:Lcom/amazon/kedu/flashcards/utils/Side;

    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->getSideModel(Lcom/amazon/kedu/flashcards/utils/Side;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kedu/flashcards/EditCardActivity;->saveCardSideTextChanges(Landroid/widget/EditText;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncCardSideModel;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;)V
    .locals 0

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;->EDIT_CARD:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    goto :goto_0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/EditCardActivity;->mode:Lcom/amazon/kedu/flashcards/EditCardActivity$Mode;

    :goto_0
    return-void
.end method
