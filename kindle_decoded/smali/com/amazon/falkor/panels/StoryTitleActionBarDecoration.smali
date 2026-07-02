.class public Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;
.super Ljava/lang/Object;
.source "FalkorActionBarDecorationProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorActionBarDecorationProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorActionBarDecorationProvider.kt\ncom/amazon/falkor/panels/StoryTitleActionBarDecoration\n*L\n1#1,74:1\n*E\n"
.end annotation


# instance fields
.field private final isInDarkMode:Z

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;ZLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-boolean p2, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->isInDarkMode:Z

    iput-object p3, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 5

    .line 53
    sget-object p1, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorDarkModeUtils;

    iget-object v0, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sdk.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->isInDarkMode:Z

    invoke-virtual {p1, v0, v2}, Lcom/amazon/falkor/utils/FalkorDarkModeUtils;->getContextThemeWrapper(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/falkor/R$layout;->story_title_action_bar_decoration:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/amazon/falkor/panels/FalkorActionBarView;

    .line 55
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    sget v0, Lcom/amazon/falkor/R$id;->falkor_title_bar_textview:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v2, "textView"

    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->title:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "Locale.getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    const-string/jumbo v3, "sdk.applicationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-eq v2, v3, :cond_0

    .line 60
    sget-object v2, Lcom/amazon/falkor/utils/FalkorFontUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorFontUtils;

    iget-object v3, p0, Lcom/amazon/falkor/panels/StoryTitleActionBarDecoration;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/falkor/utils/FalkorFontUtils;->getBookerlyRegularTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-object p1

    .line 57
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.falkor.panels.FalkorActionBarView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
