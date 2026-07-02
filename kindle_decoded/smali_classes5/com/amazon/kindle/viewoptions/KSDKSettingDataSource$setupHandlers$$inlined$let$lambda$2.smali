.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->setupHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;->invoke(IIZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(IIZ)V
    .locals 3

    if-nez p3, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;->markPerformanceStartForIdentifier$KindleReaderLibrary_release(I)V

    .line 118
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getTAG$KindleReaderLibrary_release()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font size slider change identified with value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 121
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE_VALUE:Lcom/amazon/ksdk/presets/AaSettingType;

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, p2, v1, v2}, Lcom/amazon/ksdk/presets/ReadingPreset;->setLongForSetting(ILcom/amazon/ksdk/presets/AaSettingType;Z)Z

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$2;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getSliderHandlerForIdentifier(I)Lkotlin/jvm/functions/Function2;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
