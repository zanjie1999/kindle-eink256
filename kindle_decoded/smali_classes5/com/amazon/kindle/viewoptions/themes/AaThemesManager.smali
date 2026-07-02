.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;
.super Ljava/lang/Object;
.source "AaThemesManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaThemesManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaThemesManager.kt\ncom/amazon/kindle/viewoptions/themes/AaThemesManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,400:1\n1517#2:401\n1588#2,3:402\n1517#2:405\n1588#2,3:406\n734#2:409\n825#2,2:410\n*E\n*S KotlinDebug\n*F\n+ 1 AaThemesManager.kt\ncom/amazon/kindle/viewoptions/themes/AaThemesManager\n*L\n230#1:401\n230#1,3:402\n345#1:405\n345#1,3:406\n362#1:409\n362#1,2:410\n*E\n"
.end annotation


# instance fields
.field private final USER_DEFINED_THEME_NUM_LIMITATION:I

.field private volatile aaThemesModel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/themes/AaTheme;",
            ">;"
        }
    .end annotation
.end field

.field private aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentlyFocusedTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readingPresetsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    const/4 p1, 0x5

    .line 33
    iput p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->USER_DEFINED_THEME_NUM_LIMITATION:I

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    .line 35
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$aaThemesModelUpdateUIDelegate$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$aaThemesModelUpdateUIDelegate$1;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    .line 40
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/amazon/ksdk/presets/ContextManager;->setPresetThemesEnabled(Z)V

    .line 41
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    const-string p2, "PubSubMessageService.get\u2026hemesManager::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 30
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;-><init>(Landroid/content/Context;Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V

    return-void
.end method

.method private final getThemeIcon(Lcom/amazon/ksdk/presets/BuiltInPresetType;Z)I
    .locals 5

    .line 103
    invoke-static {}, Lcom/amazon/ksdk/presets/ContextManager;->instance()Lcom/amazon/ksdk/presets/ContextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ContextManager;->bookContext()Lcom/amazon/ksdk/presets/BookContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/BookContext;->getBookContentType()Lcom/amazon/ksdk/presets/BookContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/amazon/ksdk/presets/BookContentType;->VERTICAL:Lcom/amazon/ksdk/presets/BookContentType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_b

    if-eqz p2, :cond_6

    .line 106
    sget-object p2, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    .line 111
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_user_checked:I

    goto :goto_2

    .line 110
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_low_vision_checked:I

    goto :goto_2

    .line 109
    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_large_checked_vertical:I

    goto :goto_2

    .line 108
    :cond_4
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_standard_checked_vertical:I

    goto :goto_2

    .line 107
    :cond_5
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_compact_checked_vertical:I

    :goto_2
    return p1

    .line 114
    :cond_6
    sget-object p2, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_7

    .line 119
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_user_unchecked:I

    goto :goto_3

    .line 118
    :cond_7
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_low_vision_unchecked:I

    goto :goto_3

    .line 117
    :cond_8
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_large_unchecked_vertical:I

    goto :goto_3

    .line 116
    :cond_9
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_standard_unchecked_vertical:I

    goto :goto_3

    .line 115
    :cond_a
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_compact_unchecked_vertical:I

    :goto_3
    return p1

    :cond_b
    if-eqz p2, :cond_10

    .line 124
    sget-object p2, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_f

    if-eq p1, v4, :cond_e

    if-eq p1, v3, :cond_d

    if-eq p1, v1, :cond_c

    .line 129
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_user_checked:I

    goto :goto_4

    .line 128
    :cond_c
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_low_vision_checked:I

    goto :goto_4

    .line 127
    :cond_d
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_large_checked:I

    goto :goto_4

    .line 126
    :cond_e
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_standard_checked:I

    goto :goto_4

    .line 125
    :cond_f
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_compact_checked:I

    :goto_4
    return p1

    .line 132
    :cond_10
    sget-object p2, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_14

    if-eq p1, v4, :cond_13

    if-eq p1, v3, :cond_12

    if-eq p1, v1, :cond_11

    .line 137
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_user_unchecked:I

    goto :goto_5

    .line 136
    :cond_11
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_low_vision_unchecked:I

    goto :goto_5

    .line 135
    :cond_12
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_large_unchecked:I

    goto :goto_5

    .line 134
    :cond_13
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_standard_unchecked:I

    goto :goto_5

    .line 133
    :cond_14
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->aa_menu_v2_theme_compact_unchecked:I

    :goto_5
    return p1
.end method

.method private final getThemeName(Lcom/amazon/ksdk/presets/ReadingPresetInfo;)Ljava/lang/String;
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne v0, v1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_custom:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026aa_menu_v2_themes_custom)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "themeInfo.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_pre_built_low_vision:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026mes_pre_built_low_vision)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_pre_built_large:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u20262_themes_pre_built_large)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 146
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_pre_built_compact:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026themes_pre_built_compact)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_pre_built_standard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026hemes_pre_built_standard)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final initializeThemes(Z)V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->presetInfoList()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ksdk/presets/ReadingPresetInfo;

    const-string/jumbo v2, "themeInfo"

    if-eqz p1, :cond_0

    .line 76
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeName(Lcom/amazon/ksdk/presets/ReadingPresetInfo;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v2

    const-string/jumbo v3, "themeInfo.builtInType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeIcon(Lcom/amazon/ksdk/presets/BuiltInPresetType;Z)I

    move-result v9

    .line 81
    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeIcon(Lcom/amazon/ksdk/presets/BuiltInPresetType;Z)I

    move-result v10

    .line 82
    new-instance v2, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getId()I

    move-result v5

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v7

    const-string/jumbo v4, "themeInfo.type"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;-><init>(ILjava/lang/String;Lcom/amazon/ksdk/presets/ReadingPresetType;Lcom/amazon/ksdk/presets/BuiltInPresetType;II)V

    .line 83
    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getActive()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->updateUndoThemesAfterActivityRestart()V

    return-void
.end method

.method private final removeDeletedTheme(I)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 298
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->deletePreset(I)Z

    .line 306
    const-class v0, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v1, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    .line 308
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->deleteAaTheme(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final updateUndoThemesAfterActivityRestart()V
    .locals 6

    .line 93
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 94
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 95
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v4

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    .line 96
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setUndo(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyTheme(I)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activatePreset(I)Z

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->builtInPresetInfoList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "builtInPresetInfos"

    .line 345
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 407
    check-cast v2, Lcom/amazon/ksdk/presets/ReadingPresetInfo;

    const-string v3, "info"

    .line 345
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    const-class v0, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v1, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    .line 351
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->loadSettingsFromAaTheme(ILandroid/content/Context;)V

    goto :goto_1

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfEndMarker()V

    return-void
.end method

.method public final declared-synchronized deleteTheme(I)V
    .locals 8

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 245
    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    .line 246
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setUndo(Z)V

    .line 247
    sget-object v5, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    add-int/lit8 v3, v2, 0x1

    .line 252
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_1

    .line 253
    iget-object v6, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "aaThemesModel[i]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 254
    invoke-virtual {v6}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isUndo()Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    invoke-virtual {v6, v4}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 256
    invoke-virtual {v6}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->applyTheme(I)V

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->publishThemeChangeEvent()V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final deregister()V
    .locals 1

    .line 380
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized editTheme(ILjava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "validatedName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 314
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 315
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setTitle(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->renamePreset(ILjava/lang/String;)Z

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    .line 318
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 320
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {p3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activatePreset(I)Z

    .line 321
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {p2, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->updatePreset(I)Z

    .line 322
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {p2, p1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activatePreset(I)Z

    .line 324
    const-class p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string p2, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    .line 326
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p3

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-interface {p2, p3, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->saveSettingsToAaTheme(ILandroid/content/Context;)V

    .line 327
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p3

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-interface {p2, p3, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->loadSettingsFromAaTheme(ILandroid/content/Context;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 334
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getCurrentlyFocusedTheme()Lcom/amazon/kindle/viewoptions/themes/AaTheme;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->currentlyFocusedTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    return-object v0
.end method

.method public final getThemeMetricsName(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_5

    .line 159
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v0

    const/16 v1, -0xfa0

    if-eq v0, v1, :cond_3

    const/16 v1, -0xbb8

    if-eq v0, v1, :cond_2

    const/16 v1, -0x7d0

    if-eq v0, v1, :cond_1

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    .line 164
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->STANDARD:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    goto :goto_0

    .line 161
    :cond_1
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->COMPACT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->LARGE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->LOW_VISION:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    .line 166
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object p1

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne p1, v1, :cond_4

    .line 167
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->CUSTOM:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method public final declared-synchronized getThemesCopy()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/viewoptions/themes/AaTheme;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getThemesView()Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    .line 57
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->refreshThemesContainer()V

    return-object v0
.end method

.method public final declared-synchronized hasReachedUserDefinedThemeLimitation()Z
    .locals 2

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->userDefinedThemes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 372
    iget v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->USER_DEFINED_THEME_NUM_LIMITATION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initializeThemes()V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->initializeThemes(Z)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isCustomThemeAvailable()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    sget-object v2, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final declared-synchronized isThemeNameTaken(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sanitizedName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 403
    check-cast v2, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 230
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_custom:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.getString(R.stri\u2026aa_menu_v2_themes_custom)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->removeDeletedThemes()V

    :cond_0
    return-void
.end method

.method public final publishThemeChangeEvent()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;

    sget-object v2, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;->THEME_CHANGED:Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent;-><init>(Lcom/amazon/kindle/viewoptions/event/AaSettingChangeEvent$EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public final recordPerfEndMarker()V
    .locals 2

    .line 389
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getThemesPerfString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public final recordPerfStartMarker(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "themePerfMarker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setThemesPerfString(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 385
    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public final declared-synchronized refreshCustomTheme()V
    .locals 11

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PLUGIN_CHANGED:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ksdk/presets/ReadingPreset;->setBoolForSetting(ZLcom/amazon/ksdk/presets/AaSettingType;)Z

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->customPresetInfo()Lcom/amazon/ksdk/presets/ReadingPresetInfo;

    move-result-object v0

    const-string/jumbo v1, "themeInfo"

    .line 209
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v1

    sget-object v3, Lcom/amazon/ksdk/presets/ReadingPresetType;->INVALID:Lcom/amazon/ksdk/presets/ReadingPresetType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_0

    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v1

    const-string/jumbo v3, "themeInfo.builtInType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeIcon(Lcom/amazon/ksdk/presets/BuiltInPresetType;Z)I

    move-result v9

    .line 211
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v1

    const-string/jumbo v3, "themeInfo.builtInType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemeIcon(Lcom/amazon/ksdk/presets/BuiltInPresetType;Z)I

    move-result v10

    .line 212
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_custom:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "context.getString(R.stri\u2026aa_menu_v2_themes_custom)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getId()I

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v7

    const-string/jumbo v3, "themeInfo.type"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getBuiltInType()Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v8

    const-string/jumbo v3, "themeInfo.builtInType"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;-><init>(ILjava/lang/String;Lcom/amazon/ksdk/presets/ReadingPresetType;Lcom/amazon/ksdk/presets/BuiltInPresetType;II)V

    .line 214
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getActive()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 216
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetInfo;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v0

    if-eq v3, v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setChecked(Z)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeDeletedThemes()V
    .locals 2

    monitor-enter p0

    .line 287
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 288
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 289
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->removeDeletedTheme(I)V

    goto :goto_0

    .line 291
    :cond_0
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 292
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized saveCustomTheme(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "validatedName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 184
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 185
    sget-object p1, Lcom/amazon/ksdk/presets/ReadingPresetType;->USER_DEFINED:Lcom/amazon/ksdk/presets/ReadingPresetType;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setType(Lcom/amazon/ksdk/presets/ReadingPresetType;)V

    .line 186
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setTitle(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->savePreset(Ljava/lang/String;)Z

    .line 189
    const-class p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    invoke-static {p1}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object p1

    const-string p2, "Discoveries.of(IAaSettingsProvider::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;

    .line 191
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->context:Landroid/content/Context;

    invoke-interface {p2, v0, v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->saveSettingsToAaTheme(ILandroid/content/Context;)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->userDefinedThemes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 194
    iget p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->USER_DEFINED_THEME_NUM_LIMITATION:I

    if-le p1, p2, :cond_2

    .line 195
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->removeDeletedTheme(I)V

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setAaThemesModelUpdateUIDelegate(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentlyFocusedTheme(Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->currentlyFocusedTheme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    return-void
.end method

.method public final declared-synchronized undoDelete(I)V
    .locals 3

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 270
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->setUndo(Z)V

    goto :goto_0

    .line 275
    :cond_1
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 276
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getThemeId()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 277
    sget-object p1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getUndoThemesQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModelUpdateUIDelegate:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized userDefinedThemes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/viewoptions/themes/AaTheme;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->aaThemesModel:Ljava/util/ArrayList;

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 362
    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getType()Lcom/amazon/ksdk/presets/ReadingPresetType;

    move-result-object v3

    sget-object v4, Lcom/amazon/ksdk/presets/ReadingPresetType;->USER_DEFINED:Lcom/amazon/ksdk/presets/ReadingPresetType;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
