.class public Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;
.super Landroid/widget/RelativeLayout;
.source "MangaDebugOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;->updateEnableCustomAnimation(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Z)V

    return-void
.end method

.method static getDebugScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;I)Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$DebugScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    return-object v0
.end method

.method private updateEnableCustomAnimation(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Z)V
    .locals 1

    if-eqz p4, :cond_0

    const-string v0, "Disable custom animation duration"

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "Enable custom animation duration"

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    invoke-virtual {p2, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 11

    .line 75
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 78
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 80
    sget v0, Lcom/amazon/kindle/kmv/R$id;->manga_tap_delay_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    sget v2, Lcom/amazon/kindle/kmv/R$id;->manga_animation_button:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    .line 82
    sget v2, Lcom/amazon/kindle/kmv/R$id;->enable_manga_animation_button:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 84
    sget v3, Lcom/amazon/kindle/kmv/R$id;->manga_tap_delay_edit:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 85
    sget v4, Lcom/amazon/kindle/kmv/R$id;->manga_animation_edit:I

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/EditText;

    const/16 v4, 0xc8

    const-string v9, "MangaGestureDelay"

    .line 87
    invoke-interface {v5, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "MangaAnimationDuration"

    .line 89
    invoke-interface {v5, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 91
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v4, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$1;

    invoke-direct {v4, p0, v3, v6}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$1;-><init>(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/widget/EditText;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;

    invoke-direct {v0, p0, v8, v6}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$2;-><init>(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/widget/EditText;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "EnableMangaCustomAnimation"

    .line 130
    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    invoke-direct {p0, v2, v7, v8, v0}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;->updateEnableCustomAnimation(Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Z)V

    .line 133
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/mangaviewer/MangaDebugOptions$3;-><init>(Lcom/amazon/kindle/mangaviewer/MangaDebugOptions;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
