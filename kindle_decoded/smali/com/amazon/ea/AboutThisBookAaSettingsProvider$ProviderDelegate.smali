.class public final Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;
.super Ljava/lang/Object;
.source "AboutThisBookAaSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/AboutThisBookAaSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProvider()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->access$getProvider$cp()Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;

    move-result-object v0

    return-object v0
.end method

.method public final initializeDelegate(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settingsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;

    invoke-direct {v0, p1, p2}, Lcom/amazon/ea/InitializedAboutThisBookAaSettingsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V

    invoke-virtual {p0, v0}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->setProvider(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;)V

    return-void
.end method

.method public final setProvider(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->access$setProvider$cp(Lcom/amazon/ea/IAboutThisBookAaSettingsProvider;)V

    return-void
.end method
