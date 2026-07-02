.class Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RubyDebugMenuPage"
.end annotation


# static fields
.field private static final FIRST_RUN_JIT_TUTORIAL_ID:Ljava/lang/String; = "e9943a8cf174fffa7b865420c89dbe85"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 601
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/debug/DebugPlugin$1;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureReadingStreaksMoreItemDebugOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 639
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_reading_streaks_menu_item:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 643
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isReadingInsightsMoreItemEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 644
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureRubyTabPreactivationDebugOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 625
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_tab_preactivation:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->isTabPreactivationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 630
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureYourTitlesOnFosDebugOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 658
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_your_titles_on_fos:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 663
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isYourTitlesOnFosEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 664
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage$3;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Ruby Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 613
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_ruby:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->configureRubyTabPreactivationDebugOption(Landroid/view/ViewGroup;)V

    .line 616
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->configureReadingStreaksMoreItemDebugOption(Landroid/view/ViewGroup;)V

    .line 617
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$RubyDebugMenuPage;->configureYourTitlesOnFosDebugOption(Landroid/view/ViewGroup;)V

    :cond_0
    return-object v0
.end method
