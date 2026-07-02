.class public final Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;
.super Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;
.source "AudibleAndroidPreferencesStore.java"

# interfaces
.implements Lcom/audible/mobile/preferences/PreferenceStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;",
        "Lcom/audible/mobile/preferences/PreferenceStore<",
        "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIBLE_PREFS_FILENAME:Ljava/lang/String; = "audiblePrefs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audiblePrefs"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Z)Z
    .locals 0

    .line 79
    invoke-virtual {p1}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;Z)Z
    .locals 0

    .line 8
    check-cast p1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;->getBoolean(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Z)Z

    move-result p1

    return p1
.end method

.method public getString(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    check-cast p1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;->getString(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Z)V
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic setBoolean(Ljava/lang/Object;Z)V
    .locals 0

    .line 8
    check-cast p1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;->setBoolean(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Z)V

    return-void
.end method

.method public setString(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;->setString(Lcom/audible/mobile/preferences/AudiblePreferenceKey;Ljava/lang/String;)V

    return-void
.end method
