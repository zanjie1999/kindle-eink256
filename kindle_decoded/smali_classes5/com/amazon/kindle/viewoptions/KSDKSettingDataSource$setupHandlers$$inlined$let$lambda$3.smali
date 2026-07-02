.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;->invoke(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;->this$0:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->access$perfHandlerListener(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;I)V

    .line 129
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->Companion:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;->markPerformanceStartForIdentifier$KindleReaderLibrary_release(I)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$$inlined$let$lambda$3;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getOptionListHandlerForIdentifier(I)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
