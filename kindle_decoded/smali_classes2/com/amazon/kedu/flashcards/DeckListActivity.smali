.class public Lcom/amazon/kedu/flashcards/DeckListActivity;
.super Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;
.source "DeckListActivity.java"

# interfaces
.implements Lcom/amazon/kedu/flashcards/events/EventHandler;
.implements Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

.field private deckList:Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

.field private decksManager:Lcom/amazon/kedu/flashcards/data/DecksManager;

.field private emptyDecksView:Lcom/amazon/kedu/flashcards/views/EmptyDecksView;

.field private firstLoad:Z

.field private isDestroyed:Z

.field private mActionMode:Landroidx/appcompat/view/ActionMode;

.field private selectedActionMode:Landroidx/appcompat/view/ActionMode$Callback;

.field private showEditButton:Z

.field private final space:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/DeckListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;-><init>()V

    const-string v0, " "

    .line 42
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->space:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->isDestroyed:Z

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->showEditButton:Z

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->firstLoad:Z

    .line 51
    invoke-static {}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getInstance()Lcom/amazon/kedu/flashcards/data/DecksManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->decksManager:Lcom/amazon/kedu/flashcards/data/DecksManager;

    .line 52
    new-instance v0, Lcom/amazon/kedu/flashcards/DeckListActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/DeckListActivity$1;-><init>(Lcom/amazon/kedu/flashcards/DeckListActivity;)V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->selectedActionMode:Landroidx/appcompat/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/flashcards/DeckListActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->showEditButton:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/flashcards/DeckListActivity;)Lcom/amazon/kedu/flashcards/DeckListAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kedu/flashcards/DeckListActivity;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    return-object p1
.end method

.method private onMenuAddDeck()Z
    .locals 4

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kedu/flashcards/FlashcardsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 287
    sget-object v2, Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;->DECK_LIST:Lcom/amazon/kedu/flashcards/FlashcardsActivity$DeckCreationParams$ORIGIN;

    const-string v3, "flashcardOrigin"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 288
    invoke-static {v1}, Lcom/amazon/kedu/flashcards/FlashcardsActivity;->setFlashcardCreationData(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteMarkedForDeleteDeckData()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onMenuHome()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method private validateLaunch(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 4

    .line 299
    const-class v0, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;

    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was not initialized with KRX SDK"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was initialized with null book"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    .line 312
    :cond_2
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 313
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    .line 315
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/amazon/kedu/flashcards/DeckListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was initialized without device registration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3
.end method


# virtual methods
.method protected getThemeForColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 347
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_NonNLN_Lists:I

    return p1

    .line 355
    :cond_0
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_NonNLN_Lists:I

    return p1

    .line 360
    :cond_1
    invoke-static {p1}, Lcom/amazon/kedu/flashcards/utils/ThemeHelper;->isLightTheme(Lcom/amazon/kindle/krx/ui/ColorMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 362
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Light_Lists:I

    return p1

    .line 366
    :cond_2
    sget p1, Lcom/amazon/kedu/flashcards/R$style;->FCAppTheme_Lists:I

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/DeckListActivity;->validateLaunch(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_act_deck_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 160
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->deck_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->deckList:Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

    .line 161
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->deck_list_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/EmptyDecksView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->emptyDecksView:Lcom/amazon/kedu/flashcards/views/EmptyDecksView;

    .line 163
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->deck_list_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->firstLoad:Z

    .line 167
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->initHeader()V

    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 255
    sget v1, Lcom/amazon/kedu/flashcards/R$menu;->fc_menu_deck_list:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDecksReady()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->decksManager:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->getDecks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->isActivityValid(Lcom/amazon/kedu/flashcards/DeckListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lcom/amazon/kedu/flashcards/DeckListAdapter;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->deckList:Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kedu/flashcards/DeckListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    .line 209
    invoke-virtual {v1, p0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->setOnSelectionChangedListener(Lcom/amazon/kedu/flashcards/DeckListAdapter$OnSelectionChangedListener;)V

    .line 211
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->deckList:Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->emptyDecksView:Lcom/amazon/kedu/flashcards/views/EmptyDecksView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->deckList:Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;

    iget-object v2, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v1, v2}, Lcom/amazon/kedu/flashcards/views/SwipableDeckListView;->setAdapter(Lcom/amazon/kedu/flashcards/DeckListAdapter;)V

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/metrics/MetricManager;->setDeckCount(I)V

    .line 216
    iget-boolean v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->firstLoad:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 218
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->firstLoad:Z

    .line 219
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "count"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KindleFlashcards"

    const-string v2, "OpenFlashcards"

    .line 221
    invoke-static {v0, v2, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
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

    .line 326
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/BaseFlashcardsActivity;->onEvent(Lcom/amazon/kedu/flashcards/events/Event;)V

    .line 329
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckListActivity;->onDecksReady()V

    goto :goto_0

    .line 333
    :cond_0
    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckDataUpdatedEvent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;

    if-eqz v0, :cond_2

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/DeckListActivity;->onDecksReady()V

    .line 338
    :cond_2
    :goto_0
    instance-of p1, p1, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;

    if-eqz p1, :cond_3

    .line 340
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListActivity;->onMenuHome()Z

    move-result p1

    return p1

    .line 268
    :cond_0
    sget v1, Lcom/amazon/kedu/flashcards/R$id;->menu_add_deck:I

    if-ne v0, v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/DeckListActivity;->onMenuAddDeck()Z

    move-result p1

    return p1

    .line 273
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSelectionChanged()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->isSingleDeckSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->selectedActionMode:Landroidx/appcompat/view/ActionMode$Callback;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    :cond_0
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->showEditButton:Z

    .line 237
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->showEditButton:Z

    .line 242
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->invalidate()V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->mActionMode:Landroidx/appcompat/view/ActionMode;

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 177
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 179
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    .line 180
    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 181
    const-class v1, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->subscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 183
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->currentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getBookIdentifier(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->decksManager:Lcom/amazon/kedu/flashcards/data/DecksManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/flashcards/data/DecksManager;->setActiveBook(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 190
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getInstance()Lcom/amazon/kedu/flashcards/FlashcardsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/FlashcardsApp;->getEventBus()Lcom/amazon/kedu/flashcards/events/EventBus;

    move-result-object v0

    .line 191
    const-class v1, Lcom/amazon/kedu/flashcards/events/DeckUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 192
    const-class v1, Lcom/amazon/kedu/flashcards/events/DecksReadyEvent;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kedu/flashcards/events/EventBus;->unsubscribe(Ljava/lang/Class;Lcom/amazon/kedu/flashcards/events/EventHandler;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->deleteMarkedForDeleteDeckData()V

    .line 196
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/DeckListActivity;->adapter:Lcom/amazon/kedu/flashcards/DeckListAdapter;

    invoke-virtual {v0}, Lcom/amazon/kedu/flashcards/DeckListAdapter;->resetSelectionMode()V

    .line 198
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
