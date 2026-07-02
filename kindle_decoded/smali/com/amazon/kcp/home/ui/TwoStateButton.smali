.class public final Lcom/amazon/kcp/home/ui/TwoStateButton;
.super Landroid/widget/Button;
.source "TwoStateButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
    }
.end annotation


# instance fields
.field private _currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

.field private buttonIcon:Landroid/widget/ImageView;

.field private buttonText:Landroid/widget/TextView;

.field private currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

.field private progressBar:Landroid/widget/ProgressBar;

.field private twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 39
    sget-object p1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string v0, "Utils.getFactory().kindl\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object p1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string p2, "Utils.getFactory().kindl\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    return-void
.end method

.method private final announceState(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V
    .locals 5

    .line 93
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 95
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const-string v2, "e"

    .line 97
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 98
    const-class v2, Lcom/amazon/kcp/home/ui/TwoStateButton;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 100
    sget-object v2, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    const/4 v3, 0x0

    const-string/jumbo v4, "twoStateButtonZone"

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextOne()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextTwo()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final displayStateOne()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    const-string/jumbo v3, "twoStateButtonZone"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextOne()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getAltTextOne()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->hideProgressBar()V

    .line 109
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->setStateOneTheming()V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-void

    .line 107
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "buttonText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final displayStateTwo()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    const-string/jumbo v3, "twoStateButtonZone"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getTextTwo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/TwoStateButtonZone;->getAltTextTwo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->hideProgressBar()V

    .line 119
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->setStateTwoTheming()V

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-void

    .line 117
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "buttonText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final hideProgressBar()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setProgressBarTheming()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->getCurrentState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/librarymodule/R$color;->primary_light:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$color;->primary_dark:I

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_2

    sget v0, Lcom/amazon/kindle/librarymodule/R$color;->primary_dark:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/amazon/kindle/librarymodule/R$color;->primary_light:I

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 181
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 180
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_3
    const-string/jumbo v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setStateOneTheming()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    const-string v2, "buttonText"

    const-string v3, "buttonIcon"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$color;->accent_1_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->author_follow_plus_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$color;->text_inverse_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$color;->accent_1_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->author_follow_plus_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$color;->text_inverse_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final setStateTwoTheming()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    const-string v2, "buttonText"

    const-string v3, "buttonIcon"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$color;->primary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->author_follow_check_icon_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$color;->text_primary_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 158
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const-string/jumbo v2, "shapedrawable.paint"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 162
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$color;->accent_2_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    sget v1, Lcom/amazon/kindle/librarymodule/R$drawable;->author_follow_check_icon_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$color;->text_primary_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final showProgressBar()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->setProgressBarTheming()V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "buttonText"

    .line 127
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "buttonIcon"

    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getCurrentState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    return-object v0
.end method

.method public final getNextState()Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->_currentState:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 56
    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    :goto_0
    return-object v0
.end method

.method public final setData(Lcom/amazon/kindle/home/model/TwoStateButtonZone;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 1

    const-string/jumbo v0, "twoStateButtonZone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonIcon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "progressBar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->twoStateButtonZone:Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    .line 71
    iput-object p2, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonIcon:Landroid/widget/ImageView;

    .line 72
    iput-object p3, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->buttonText:Landroid/widget/TextView;

    .line 73
    iput-object p4, p0, Lcom/amazon/kcp/home/ui/TwoStateButton;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final show(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->showProgressBar()V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->displayStateTwo()V

    .line 84
    sget-object p1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->announceState(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/TwoStateButton;->displayStateOne()V

    .line 80
    sget-object p1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/TwoStateButton;->announceState(Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;)V

    :goto_0
    return-void
.end method
