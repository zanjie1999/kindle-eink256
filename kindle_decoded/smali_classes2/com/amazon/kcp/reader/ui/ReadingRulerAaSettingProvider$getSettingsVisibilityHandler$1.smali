.class final Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerAaSettingProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider;->getSettingsVisibilityHandler(Lcom/amazon/ksdk/presets/AaSettingType;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $settingType:Lcom/amazon/ksdk/presets/AaSettingType;


# direct methods
.method constructor <init>(Lcom/amazon/ksdk/presets/AaSettingType;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;->$settingType:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;
    .locals 3

    .line 182
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;->$settingType:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1, v2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;->$settingType:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingEnabled(Lcom/amazon/ksdk/presets/AaSettingType;Lcom/amazon/ksdk/presets/ReadingPreset;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->ENABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->DISABLED:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerAaSettingProvider$getSettingsVisibilityHandler$1;->invoke()Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    move-result-object v0

    return-object v0
.end method
