.class public final Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;
.super Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;
.source "DebugSharedPreferences.java"

# interfaces
.implements Lcom/audible/mobile/preferences/PreferenceStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;",
        "Lcom/audible/mobile/preferences/PreferenceStore<",
        "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUDIBLE_WEBVIEW_ON_FOS_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

.field public static final DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

.field public static final DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "AudibleDebugPrefs"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const-string v1, "DB_SCALING_TOGGLE_MISMATCH_EXPECTED"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_MISMATCH_EXPECTED_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const-string v1, "AUDIBLE_HP_COMPANION_MAPPING_165984"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->DB_SCALING_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    .line 31
    new-instance v0, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    const-string v1, "KINDLE_ANDROID_APPCORE_AUDIBLE_WEBVIEW_FOS_303479"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->AUDIBLE_WEBVIEW_ON_FOS_TOGGLE_KEY:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "AudibleDebugPrefs"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)Z
    .locals 0

    .line 101
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;Z)Z
    .locals 0

    .line 15
    check-cast p1, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->getBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)Z

    move-result p1

    return p1
.end method

.method public getString(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    check-cast p1, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->getString(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)V
    .locals 0

    .line 107
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic setBoolean(Ljava/lang/Object;Z)V
    .locals 0

    .line 15
    check-cast p1, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->setBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)V

    return-void
.end method

.method public setString(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->setString(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Ljava/lang/String;)V

    return-void
.end method
