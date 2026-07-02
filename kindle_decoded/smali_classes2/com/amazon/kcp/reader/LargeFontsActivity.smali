.class public Lcom/amazon/kcp/reader/LargeFontsActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "LargeFontsActivity.java"


# instance fields
.field private fontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field largeFontAdapter:Lcom/amazon/kcp/reader/LargeFontAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/LargeFontsActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/reader/LargeFontsActivity;->fontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/LargeFontsActivity;Landroid/view/View;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/LargeFontsActivity;->isAccessibilityFocused(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private getLargeFontList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-static {}, Lcom/mobipocket/android/drawing/FontFamily;->values()[Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 92
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getDownloadableFonts(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getLanguageSet()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isAccessibilityFocused(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 110
    :cond_1
    sget v1, Lcom/amazon/kcp/more/R$id;->large_font_operations:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAccessibilityFocused()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private setupAdapter()V
    .locals 2

    .line 51
    sget v0, Lcom/amazon/kcp/more/R$id;->large_fonts_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/LargeFontsActivity;->fontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontsActivity;->fontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/amazon/kcp/font/FontDividerItemDecoration;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/font/FontDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 54
    new-instance v0, Lcom/amazon/kcp/reader/LargeFontAdapter;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/LargeFontsActivity;->getLargeFontList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/reader/LargeFontAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/LargeFontsActivity;->largeFontAdapter:Lcom/amazon/kcp/reader/LargeFontAdapter;

    .line 55
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity;->fontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/amazon/kcp/more/R$layout;->large_fonts_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/reader/LargeFontsActivity;->setupAdapter()V

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onResourceSetDownload(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/LargeFontsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/LargeFontsActivity$1;-><init>(Lcom/amazon/kcp/reader/LargeFontsActivity;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
