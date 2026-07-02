.class public final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;
.super Ljava/lang/Object;
.source "KSDKSettingDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

.field private static performanceInProgressIdentifier:Ljava/lang/Integer;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private boolSettingGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxGroupChangeHandler:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private checkboxGroupSettingGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private checkboxGroupViewCreationListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private disabledDisplayGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private displayGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private intSettingGetter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

.field private optionListChangeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private priorityHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sliderChangeHandler:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private toggleChangeHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(KSDKSettingDataSource::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->TAG:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$boolSettingGetter$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$boolSettingGetter$1;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->boolSettingGetter:Lkotlin/jvm/functions/Function1;

    .line 50
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$intSettingGetter$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$intSettingGetter$1;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->intSettingGetter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getDisplayStateForIdentifier(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getDisplayStateForIdentifier(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPerformanceInProgressIdentifier$cp()Ljava/lang/Integer;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->performanceInProgressIdentifier:Ljava/lang/Integer;

    return-object v0
.end method

.method public static final synthetic access$perfHandlerListener(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->perfHandlerListener(I)V

    return-void
.end method

.method public static final synthetic access$setPerformanceInProgressIdentifier$cp(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->performanceInProgressIdentifier:Ljava/lang/Integer;

    return-void
.end method

.method private final getDisplayStateForIdentifier(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 4

    .line 157
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->settingTypeForAaSettingIdentifier(I)Lcom/amazon/ksdk/presets/AaSettingType;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v2

    .line 160
    invoke-virtual {v1, v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v3

    .line 161
    invoke-virtual {v1, v0, v2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingEnabled(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z

    move-result v0

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getDisplayStateForIdentifierUsingNonKSDK(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 170
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 172
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 175
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1
.end method

.method private final getDisplayStateForIdentifierUsingNonKSDK(I)Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 4

    .line 185
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->settingTypeForAaSettingIdentifier(I)Lcom/amazon/ksdk/presets/AaSettingType;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    .line 187
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v3

    .line 189
    invoke-virtual {v1, v0, v2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingEnabled(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z

    move-result v1

    .line 193
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LETTERBOXING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 197
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldShowAaMenuV2CmxSettings()Z

    move-result v2

    if-nez v2, :cond_5

    .line 198
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 201
    :cond_3
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_4

    goto :goto_1

    .line 202
    :cond_4
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_5

    .line 203
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 209
    :cond_5
    sget-object v2, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-nez v0, :cond_6

    .line 210
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 214
    :cond_6
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    if-eqz v0, :cond_8

    .line 216
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->shouldShowMultiColumn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 217
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 219
    :cond_7
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    .line 226
    :cond_8
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    .line 228
    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->shouldDisableTextAlignment()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 229
    sget-object p1, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private final perfHandlerListener(I)V
    .locals 2

    .line 240
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 241
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_BG_COLOR_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstants.AA_MENU_BG_COLOR_CHANGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_0

    .line 243
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 244
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_CS_TOGGLE_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstan\u2026.AA_MENU_CS_TOGGLE_CHANGE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setupHandlers()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$1;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->displayGetter:Lkotlin/jvm/functions/Function1;

    .line 107
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->disabledDisplayGetter:Lkotlin/jvm/functions/Function1;

    .line 110
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->toggleChangeHandler:Lkotlin/jvm/functions/Function2;

    .line 114
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->sliderChangeHandler:Lkotlin/jvm/functions/Function3;

    .line 127
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->optionListChangeHandler:Lkotlin/jvm/functions/Function2;

    .line 132
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$4;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->visibilityHandler:Lkotlin/jvm/functions/Function1;

    .line 135
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$7;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$7;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->boolSettingGetter:Lkotlin/jvm/functions/Function1;

    .line 138
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$8;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$8;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->intSettingGetter:Lkotlin/jvm/functions/Function1;

    .line 141
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$9;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$9;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->priorityHandler:Lkotlin/jvm/functions/Function1;

    .line 144
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$10;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$10;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupChangeHandler:Lkotlin/jvm/functions/Function3;

    .line 147
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$11;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$11;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupSettingGetter:Lkotlin/jvm/functions/Function1;

    .line 150
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$12;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$12;-><init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupViewCreationListener:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getBoolSettingGetter$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->boolSettingGetter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getCheckboxGroupChangeHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "[I",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupChangeHandler:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getCheckboxGroupViewCreationListener$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupViewCreationListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getIntSettingGetter$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->intSettingGetter:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getLegacyManager()Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    return-object v0
.end method

.method public final getOptionListChangeHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->optionListChangeHandler:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getSetting(I)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 8

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->displayGetter:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->getBuildType()Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 82
    :goto_1
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$7;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$7;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 83
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$8;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$8;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 84
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$9;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$9;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 85
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->intSettingGetter:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 86
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$10;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 87
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$11;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$11;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->checkboxCreationListener(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 88
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->checkboxGroupSettingGetter:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialOptionsSelected([I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_3

    .line 75
    :cond_3
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$4;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 76
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$5;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 77
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->intSettingGetter:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 78
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->boolSettingGetter:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 79
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$6;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$6;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_3

    .line 69
    :cond_4
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 70
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$2;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 71
    new-instance v2, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$3;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$$inlined$let$lambda$3;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->boolSettingGetter:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v0

    move-object v5, v0

    goto :goto_4

    :cond_6
    move-object v5, v1

    .line 93
    :goto_4
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->priorityHandler:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_5

    :cond_7
    move-object v0, v1

    .line 94
    :goto_5
    new-instance v6, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;

    invoke-direct {v6, p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$getSetting$visibilityGetter$1;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    .line 95
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->disabledDisplayGetter:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;

    :goto_6
    move-object v7, v2

    if-eqz v0, :cond_9

    if-eqz v5, :cond_9

    .line 97
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;)V

    :cond_9
    return-object v1
.end method

.method public final getSliderChangeHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->sliderChangeHandler:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getTAG$KindleReaderLibrary_release()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getToggleChangeHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->toggleChangeHandler:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getVisibilityHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->visibilityHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final setLegacyManager(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    .line 60
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->setupHandlers()V

    return-void
.end method
