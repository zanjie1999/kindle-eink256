.class final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KSDKSettingDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;->$legacyManager:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDisabledDisplayForIdentifier(I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$setupHandlers$1$2;->invoke(I)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-result-object p1

    return-object p1
.end method
