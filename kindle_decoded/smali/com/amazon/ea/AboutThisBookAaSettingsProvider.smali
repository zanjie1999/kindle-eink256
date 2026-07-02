.class public final Lcom/amazon/ea/AboutThisBookAaSettingsProvider;
.super Ljava/lang/Object;
.source "AboutThisBookAaSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;
    }
.end annotation


# static fields
.field public static final ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

.field private static provider:Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    .line 35
    new-instance v1, Lcom/amazon/ea/EmptyAboutThisBookAaSettingsProvider;

    invoke-direct {v1}, Lcom/amazon/ea/EmptyAboutThisBookAaSettingsProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->setProvider(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getProvider$cp()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->provider:Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    return-object v0
.end method

.method public static final synthetic access$setProvider$cp(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->provider:Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    return-void
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    invoke-virtual {v0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->getProvider()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->deleteAaTheme(ILandroid/content/Context;)V

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

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    invoke-virtual {v0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->getProvider()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    invoke-virtual {v0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->getProvider()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->loadSettingsFromAaTheme(ILandroid/content/Context;)V

    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    invoke-virtual {v0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->getProvider()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;->saveSettingsToAaTheme(ILandroid/content/Context;)V

    return-void
.end method
