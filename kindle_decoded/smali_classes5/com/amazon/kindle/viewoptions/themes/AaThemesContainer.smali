.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;
.super Landroid/widget/LinearLayout;
.source "AaThemesContainer.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

.field private final themeViewOnClickListener:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;

.field private final themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

.field private final updateThemesCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    .line 23
    const-class p1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(AaThemesContainer::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->TAG:Ljava/lang/String;

    .line 26
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->updateThemesCallback:Lkotlin/jvm/functions/Function0;

    .line 40
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_themes_container:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->updateThemesCallback:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->setAaThemesModelUpdateUIDelegate(Lkotlin/jvm/functions/Function0;)V

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 71
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themeViewOnClickListener:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;

    return-void
.end method

.method public static final synthetic access$addOrReplaceTheme(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->addOrReplaceTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    return-void
.end method

.method public static final synthetic access$getCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemeView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    return-object p0
.end method

.method public static final synthetic access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    return-object p0
.end method

.method public static final synthetic access$setCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    return-void
.end method

.method private final addOrReplaceTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V
    .locals 4

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 55
    :cond_1
    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-direct {v0, v1, p1, v3}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    .line 56
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themeViewOnClickListener:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$themeViewOnClickListener$1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    if-nez v1, :cond_2

    .line 59
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    .line 62
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingDivider;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p1

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getCurrentlyFocusedTheme()Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->applyFocus()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final onAaSettingChange(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;->getType()Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->SETTING_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->currentlyCheckedTheme:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->getThemeType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-eq p1, v0, :cond_1

    .line 101
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->refreshCustomTheme()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 92
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->deregister()V

    return-void
.end method

.method public final refreshThemesContainer()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->updateThemesCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
