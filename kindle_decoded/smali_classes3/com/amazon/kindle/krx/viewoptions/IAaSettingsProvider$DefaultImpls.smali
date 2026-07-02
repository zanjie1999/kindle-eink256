.class public final Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "IAaSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V
    .locals 0

    return-void
.end method

.method public static deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static getSettings(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string p0, "tab"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V
    .locals 0

    return-void
.end method

.method public static loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V
    .locals 0

    return-void
.end method

.method public static saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
