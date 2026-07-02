.class Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderSearchDebugMenuPage"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/debug/DebugPlugin$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureAutoCompleteSuggestionsButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 546
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_autocomplete_suggestions_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Auto-Complete Suggestions"

    .line 550
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Auto-Complete Suggestions"

    .line 551
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 552
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areAutoCompleteSuggestionsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 553
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$3;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private configureDiacriticsStrippingButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 580
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_diacritics_stripping_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Diacritics Stripping (Except for Arabic)"

    .line 584
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Diacritics Stripping"

    .line 585
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->isSearchDiacriticsStrippingEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 587
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$5;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private configureNotebookSearchButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 512
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_notebook_search_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Notebook Search"

    .line 516
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Notebook Search"

    .line 517
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 518
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNotebookSearchEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 519
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private configureRecentSearchTermsButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 529
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_recent_search_terms_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Recent Search Terms"

    .line 533
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Recent Search Terms"

    .line 534
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 535
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isRecentSearchTermsEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 536
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private configureTopSearchWidgetButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 563
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_top_search_widget_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Top Search Widget"

    .line 567
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Top Search Widget"

    .line 568
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->isTopSearchWidgetEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 570
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage$4;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Reader Search Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 500
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_reader_search:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 502
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureNotebookSearchButton(Landroid/view/ViewGroup;)V

    .line 503
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureRecentSearchTermsButton(Landroid/view/ViewGroup;)V

    .line 504
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureAutoCompleteSuggestionsButton(Landroid/view/ViewGroup;)V

    .line 505
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureTopSearchWidgetButton(Landroid/view/ViewGroup;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$ReaderSearchDebugMenuPage;->configureDiacriticsStrippingButton(Landroid/view/ViewGroup;)V

    return-object v0
.end method
