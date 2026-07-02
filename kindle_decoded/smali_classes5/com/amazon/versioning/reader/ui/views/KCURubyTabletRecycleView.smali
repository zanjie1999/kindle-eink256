.class public Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "KCURubyTabletRecycleView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupBackground(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupRecycleView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupBackground(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupRecycleView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupBackground(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView;->setupRecycleView(Landroid/content/Context;)V

    return-void
.end method

.method private setupBackground(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/amazon/versioning/reader/ui/views/KCURubyTabletRecycleView$1;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_recycleview_background_rubydark:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 53
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->kcu_recycleview_background_rubylight:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupRecycleView(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method
