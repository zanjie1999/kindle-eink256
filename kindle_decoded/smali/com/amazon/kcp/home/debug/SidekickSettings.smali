.class public final Lcom/amazon/kcp/home/debug/SidekickSettings;
.super Ljava/lang/Object;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

.field private static final INSTANCE:Lcom/amazon/android/util/LazyWith;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/util/LazyWith<",
            "Lcom/amazon/kcp/home/debug/SidekickSettings;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isDramCompliantKStoreHeaderEnabled:Z

.field private final isPinningEnabled:Z

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    .line 245
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;->INSTANCE:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion$INSTANCE$1;

    invoke-static {v0}, Lcom/amazon/android/util/LazyKt;->lazyWith(Lkotlin/jvm/functions/Function1;)Lcom/amazon/android/util/LazyWith;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string/jumbo v1, "sidekick_settings"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "context.getSharedPrefere\u2026FS, Context.MODE_PRIVATE)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    .line 107
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPinningEnabled:Z

    .line 110
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result p1

    if-nez p1, :cond_4

    .line 111
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 112
    :cond_2
    new-instance p1, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;

    invoke-direct {p1}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;-><init>()V

    sget-object v2, Lcom/amazon/kcp/home/debug/WeblabName;->DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_KFA:Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;->isWeblabEnabled(Lcom/amazon/kcp/home/debug/WeblabName;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;

    invoke-direct {p1}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;-><init>()V

    sget-object v2, Lcom/amazon/kcp/home/debug/WeblabName;->DRAM_COMPLIANT_KSTORE_VALUE_ENABLED_FOS:Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;->isWeblabEnabled(Lcom/amazon/kcp/home/debug/WeblabName;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDramCompliantKStoreHeaderEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/debug/SidekickSettings;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/amazon/android/util/LazyWith;
    .locals 1

    .line 103
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->INSTANCE:Lcom/amazon/android/util/LazyWith;

    return-object v0
.end method


# virtual methods
.method public final addDismissedCard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getDismissedCards()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 210
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p1, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "dismissed_cards"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final clearDismissedCards()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dismissed_cards"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getDismissedCards()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "dismissed_cards"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;
    .locals 3

    .line 122
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endpoint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v1, "prefs.getString(KEY_ENDP\u2026kickEndpoint.PROD.name)!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    :goto_0
    return-object v0
.end method

.method public final getForceAuthorFollowAPIFailure()Z
    .locals 1

    .line 147
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "force_author_follow_failure"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getForceFeedRefresh()Z
    .locals 1

    .line 143
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "force_refresh"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getGammaEndpoint()Ljava/lang/String;
    .locals 3

    .line 171
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sidekick_gamma_endpoint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getPageIdOverride()Ljava/lang/String;
    .locals 3

    .line 155
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "page_id_override"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getSidekickCustomEndpoint()Ljava/lang/String;
    .locals 3

    .line 182
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sidekick_custom_endpoint"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getTimestampForReftag(Ljava/lang/String;)J
    .locals 3

    const-string/jumbo v0, "reftag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isCardRotationDisabled()Z
    .locals 2

    const-string v0, "disable_card_shuffling"

    .line 117
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->CARD_ROTATION_DISABLED:Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;->isWeblabEnabled(Lcom/amazon/kcp/home/debug/WeblabName;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isDebugCardsEnabled()Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "debug_cards"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDisplayAllCardsEnabled()Z
    .locals 2

    .line 235
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->ANDROID_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;->isWeblabEnabled(Lcom/amazon/kcp/home/debug/WeblabName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 238
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;

    invoke-direct {v0}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;-><init>()V

    sget-object v1, Lcom/amazon/kcp/home/debug/WeblabName;->FOS_CARD_LIMIT_EXPERIMENT_NAME:Lcom/amazon/kcp/home/debug/WeblabName;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickWeblabManager;->isWeblabEnabled(Lcom/amazon/kcp/home/debug/WeblabName;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isDramCompliantKStoreHeaderEnabled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDramCompliantKStoreHeaderEnabled:Z

    return v0
.end method

.method public final isPageSizeOverridden()Z
    .locals 1

    .line 135
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "page_size_override"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->readEnabledFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPinningEnabled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->isPinningEnabled:Z

    return v0
.end method

.method public final readEnabledFlag(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "pref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final setCardRotationDisabled(Z)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "disable_card_shuffling"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDebugCardsEnabled(Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debug_cards"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEndpoint(Lcom/amazon/kcp/home/debug/SidekickEndpoint;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "endpoint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setForceFeedRefresh(Z)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "force_refresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setGammaEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sidekick_gamma_endpoint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPageIdOverride(Ljava/lang/String;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "page_id_override"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setPageSizeOverridden(Z)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "page_size_override"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSidekickCustomEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sidekick_custom_endpoint"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setTimestampForReftag(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "reftag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final writeEnabledFlag(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "pref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
