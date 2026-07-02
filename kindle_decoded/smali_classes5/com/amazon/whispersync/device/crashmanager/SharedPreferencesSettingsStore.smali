.class Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;
.super Ljava/lang/Object;
.source "SharedPreferencesSettingsStore.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/SettingsStore;


# instance fields
.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SharedPreferences can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)J
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveString(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SharedPreferencesSettingsStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
