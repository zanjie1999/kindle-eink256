.class public Lcom/amazon/kedu/flashcards/DeckListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;,
        Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;,
        Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;,
        Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private decks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;"
        }
    .end annotation
.end field

.field private markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

.field private onDeleteDeckListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;

.field private onSelectionChangedListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;

.field private selectedDecks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/views/SwipableView;",
            ">;"
        }
    .end annotation
.end field

.field private selectionMode:Z

.field private singleDeckSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;",
            ">;I)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->singleDeckSelected:Z

    .line 40
    iput-boolean p3, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    const/4 p3, 0x0

    .line 42
    iput-object p3, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 48
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->decks:Ljava/util/List;

    .line 50
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->initialize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->decks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->onDeleteDeckListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/amazon/kedu/flashcards/DeckListAdapter;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kedu/flashcards/DeckListAdapter;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/kedu/flashcards/DeckListAdapter;Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p1
.end method

.method private getProgressString(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;
    .locals 3

    .line 200
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getCorrectCount()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 201
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_list_percent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimeEditedString(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;
    .locals 13

    .line 193
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;->processEpochToSeconds(J)J

    move-result-wide v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getDateEdited()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v7, v3, v5

    mul-long v9, v0, v5

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private highlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedViews:Ljava/util/List;

    return-void
.end method

.method private selectionChanged()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->onSelectionChangedListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;->onSelectionChanged()V

    :cond_0
    return-void
.end method

.method private unhighlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private updateSelectionMode()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 318
    :goto_0
    iput-boolean v3, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 319
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->singleDeckSelected:Z

    .line 321
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionChanged()V

    return-void
.end method


# virtual methods
.method public deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V
    .locals 2

    .line 248
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->areCardsLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/data/DecksManager;->deleteDeck(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->decks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public deleteMarkedForDeleteDeckData()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    :cond_0
    return-void
.end method

.method public deleteSelectedDecks()Z
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    .line 230
    invoke-virtual {p0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteDeck(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->resetSelectionMode()V

    const/4 v0, 0x1

    return v0
.end method

.method public deselectItem(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 1

    .line 206
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->unhighlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    .line 207
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->enableSwipe()V

    .line 209
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedViews:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->updateSelectionMode()V

    return-void
.end method

.method public editSelectedDeck()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kedu/flashcards/DeckOverviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deckID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->resetSelectionMode()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->decks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->decks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getItem(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 353
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getItem(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedCount()I
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 65
    check-cast p2, Lcom/amazon/kedu/flashcards/views/SwipableView;

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getItem(I)Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ViewSwitcher;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    new-instance p2, Lcom/amazon/kedu/flashcards/views/SwipableView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_deck_list_item:I

    sget v2, Lcom/amazon/kedu/flashcards/R$id;->deck_list_item:I

    invoke-direct {p2, v0, v1, v2}, Lcom/amazon/kedu/flashcards/views/SwipableView;-><init>(Landroid/content/Context;II)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 74
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;

    invoke-direct {v0, p3}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;-><init>(Lcom/amazon/kedu/flashcards/DeckListAdapter$1;)V

    .line 77
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_name:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$102(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_last_edited:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$202(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 79
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_card_count:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$302(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 80
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->progress_bar:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$402(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 81
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_progress_percent:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$502(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 82
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_progress_correct_label:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$602(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->deck_list_item_info_container:I

    invoke-virtual {p2, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$702(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;Landroid/view/View;)Landroid/view/View;

    .line 85
    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_1
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$100(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    .line 93
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$200(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    .line 94
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$300(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    .line 95
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$400(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v4

    .line 96
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$700(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/view/View;

    move-result-object v5

    .line 98
    iget-object v6, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->highlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    goto :goto_2

    .line 104
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->unhighlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    .line 107
    :goto_2
    iget-object v6, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->markedForDelete:Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 109
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->markAsDeleted()V

    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->undoDeletion()V

    .line 116
    :goto_3
    new-instance v6, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;

    invoke-direct {v6, p0, p3}, Lcom/amazon/kedu/flashcards/DeckListAdapter$DeckListItemEventListener;-><init>(Lcom/amazon/kedu/flashcards/DeckListAdapter;Lcom/amazon/kedu/flashcards/DeckListAdapter$1;)V

    .line 117
    invoke-virtual {p2, v6, p1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->setEventListener(Lcom/amazon/kedu/flashcards/views/SwipableView$SwipableItemEventListener;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/DeckModel;->getName()Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-static {p3}, Lcom/amazon/kedu/flashcards/utils/StringUtils;->isRTLString(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 124
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_4

    .line 126
    :cond_4
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutDirection(I)V

    .line 129
    :goto_4
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getTimeEditedString(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->getAllCardsCount()I

    move-result p3

    if-ne p3, v7, :cond_5

    .line 136
    iget-object v5, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_list_card:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 140
    :cond_5
    iget-object v5, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_list_cards:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-ne p3, v7, :cond_6

    .line 144
    sget v5, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_content_description_single:I

    goto :goto_6

    :cond_6
    sget v5, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_content_description:I

    .line 145
    :goto_6
    iget-object v6, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    .line 146
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v8

    .line 147
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 148
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 145
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;->isLoadComplete()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_9

    .line 152
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/models/QuizDeckModel;->isQuizStarted()Z

    move-result v9

    if-nez v9, :cond_7

    .line 154
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$600(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 159
    :cond_7
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->getProgressString(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$600(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne p3, v7, :cond_8

    .line 163
    sget p1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_content_description_quiz_in_progress_single:I

    goto :goto_7

    :cond_8
    sget p1, Lcom/amazon/kedu/flashcards/R$string;->fc_deck_content_description_quiz_in_progress:I

    .line 166
    :goto_7
    iget-object v5, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v5, v10, [Ljava/lang/Object;

    .line 167
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v8

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v7

    .line 169
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    aput-object p3, v5, v11

    .line 170
    invoke-static {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;->access$500(Lcom/amazon/kedu/flashcards/DeckListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    aput-object p3, v5, v6

    .line 166
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    .line 173
    :goto_8
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {v4, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    invoke-virtual {p2, v7}, Landroid/widget/ViewSwitcher;->setEnabled(Z)V

    goto :goto_9

    .line 180
    :cond_9
    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    invoke-virtual {p2, v8}, Landroid/widget/ViewSwitcher;->setEnabled(Z)V

    .line 182
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :goto_9
    invoke-virtual {p2, v5}, Landroid/widget/ViewSwitcher;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isSelectionMode()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    return v0
.end method

.method public isSingleDeckSelected()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->singleDeckSelected:Z

    return v0
.end method

.method public resetSelectionMode()V
    .locals 2

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectionMode:Z

    .line 303
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->singleDeckSelected:Z

    .line 305
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/views/SwipableView;

    .line 307
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/views/SwipableView;->enableSwipe()V

    .line 308
    invoke-direct {p0, v1}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->unhighlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedViews:Ljava/util/List;

    return-void
.end method

.method public selectItem(Lcom/amazon/kedu/flashcards/whispersync/models/WhispersyncQuizDeckModel;Lcom/amazon/kedu/flashcards/views/SwipableView;)V
    .locals 1

    .line 217
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->highlightDeck(Lcom/amazon/kedu/flashcards/views/SwipableView;)V

    .line 218
    invoke-virtual {p2}, Lcom/amazon/kedu/flashcards/views/SwipableView;->disableSwipe()V

    .line 220
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedDecks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->selectedViews:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->updateSelectionMode()V

    return-void
.end method

.method public setOnDeleteDeckListener(Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->onDeleteDeckListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnDeleteDeckListener;

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListAdapter;->onSelectionChangedListener:Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;

    return-void
.end method
