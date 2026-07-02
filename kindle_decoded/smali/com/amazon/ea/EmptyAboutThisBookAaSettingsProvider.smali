.class public final Lcom/amazon/ea/EmptyAboutThisBookAaSettingsProvider;
.super Ljava/lang/Object;
.source "AboutThisBookAaSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 74
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 74
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 74
    invoke-static {p0, p1}, Lcom/amazon/ea/IAboutThisBookAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
