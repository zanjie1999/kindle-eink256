.class public Lcom/audible/mobile/player/PlayerSharedPreferences;
.super Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;
.source "PlayerSharedPreferences.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerSettingsProvider;


# static fields
.field private static final KEY_NARRATION_SPEED:Ljava/lang/String; = "speed"

.field private static final KEY_VOLUME_BOOST:Ljava/lang/String; = "volume_boost"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "AudiblePlayerService.prefs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "AudiblePlayerService.prefs"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)Lcom/audible/mobile/player/NarrationSpeed;
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/audible/mobile/player/NarrationSpeed;->asPercentage()I

    move-result p1

    const-string v0, "speed"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 43
    invoke-static {p1}, Lcom/audible/mobile/player/NarrationSpeed;->from(I)Lcom/audible/mobile/player/NarrationSpeed;

    move-result-object p1

    return-object p1
.end method

.method public getVolumeBoost()Z
    .locals 2

    const-string v0, "volume_boost"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setNarrationSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/audible/mobile/player/NarrationSpeed;->asPercentage()I

    move-result p1

    const-string v0, "speed"

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setVolumeBoost(Z)V
    .locals 1

    const-string v0, "volume_boost"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/preferences/SharedPreferencesStoreBase;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method
