.class public final Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;
.super Ljava/lang/Object;
.source "ProfilesDebugUtils.kt"


# static fields
.field private static final BOOKS_PROFILES_DEBUG_SETTINGS:Ljava/lang/String; = "BooksProfilesDebugSettings"

.field private static final CONTENT_SHARING_FEATURE_STATUS:Ljava/lang/String; = "ContentSharingFeatureStatus"

.field public static final INSTANCE:Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;

.field private static isContentSharingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->INSTANCE:Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static final getContentSharingWeblabTreatment()Z
    .locals 4

    .line 45
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    if-eqz v0, :cond_0

    const-string v1, "CONTENT_SHARING_ANDROID_398470"

    .line 46
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x43

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa5d

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "T1"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "C"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_4
    :goto_1
    return v1
.end method

.method private final getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "BooksProfilesDebugSettings"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026GS, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final initDebugValues(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->INSTANCE:Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;

    sget-boolean v1, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled:Z

    const-string v2, "ContentSharingFeatureStatus"

    invoke-direct {v0, p0, v2, v1}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->getBooleanFlag(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled:Z

    return-void
.end method

.method public static final isContentSharingEnabled()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled:Z

    return v0
.end method

.method private final persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final setContentSharingEnabled(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sput-boolean p1, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->isContentSharingEnabled:Z

    .line 40
    sget-object v0, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->INSTANCE:Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;

    const-string v1, "ContentSharingFeatureStatus"

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/kcp/profiles/debug/ProfilesDebugUtils;->persistBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
