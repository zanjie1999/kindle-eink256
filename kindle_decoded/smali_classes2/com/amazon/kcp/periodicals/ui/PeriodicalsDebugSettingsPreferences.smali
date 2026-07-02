.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;
.super Landroid/preference/PreferenceActivity;
.source "PeriodicalsDebugSettingsPreferences.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->getPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 4

    const-string v0, "NULL"

    .line 39
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing debug setting \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" int value ["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget p1, Lcom/amazon/kindle/newsstand/forstandalone/R$layout;->periodicals_debug_preferences_screen:I

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 52
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "enableDebugSettings"

    .line 55
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "tap_tutorial_instances"

    .line 58
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 59
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getNbOfTapToTextTutorialViews()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "customizeThumbnailGridView"

    .line 61
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isThumbnailGridViewCustomized()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "thumbnailGridViewNbOfColumns"

    .line 64
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 65
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewNumberOfColumns()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "thumbnailGridViewHorizontalSpacing"

    .line 67
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 68
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewHorizontalSpacing()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "thumbnailGridViewVerticalSpacing"

    .line 70
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 71
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getThumbnailGridViewVerticalSpacing()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "showPopupBookmark"

    .line 73
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isPopupBookmarkEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "articleAlwaysDownloading"

    .line 76
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 77
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isArticleAlwaysDownloading()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDownloadErrorEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "downloadError"

    .line 79
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDownloadErrorEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "forceUpsellFlag"

    .line 82
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 83
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getForceUpsellType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/newsstand/forstandalone/R$array;->upsell_type_entry_values:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "upsell_freqSync"

    .line 87
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    const/4 v1, -0x1

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "enableYJReplicaContent"

    .line 90
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isYJReplicaEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    const-string p1, "clear_bookmarks"

    .line 94
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "applyTapToTextTutorialValue"

    .line 106
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 107
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$2;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "upsell_freqSync_apply"

    .line 119
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 120
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$3;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "upsell_sync_now"

    .line 132
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 133
    sget-object v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->TAG:Ljava/lang/String;

    const-string v1, "setOnPreferenceClickListener shyam"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$4;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "upsell_sync_from_sample_json"

    .line 144
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 145
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$5;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "upsell_sync_unregister_alarm"

    .line 156
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 157
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$6;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "upsell_cover_sync_now"

    .line 170
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 171
    new-instance v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$7;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 185
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 187
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "enableDebugSettings"

    .line 193
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setDebuggingEnabled(Z)V

    const-string v3, "showClickableContent"

    .line 194
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setContentVisible(Z)V

    const-string v3, "customizeThumbnailGridView"

    .line 195
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewCustomized(Z)V

    const-string v3, "thumbnailGridViewNbOfColumns"

    .line 196
    invoke-direct {p0, v1, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->getPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewNumberOfColumns(I)V

    const-string v3, "thumbnailGridViewHorizontalSpacing"

    .line 197
    invoke-direct {p0, v1, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->getPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewHorizontalSpacing(I)V

    const-string v3, "thumbnailGridViewVerticalSpacing"

    .line 198
    invoke-direct {p0, v1, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->getPreferenceIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setThumbnailGridViewVerticalSpacing(I)V

    const-string v3, "showPopupBookmark"

    .line 199
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setPopupBookmarkEnabled(Z)V

    const-string v3, "articleAlwaysDownloading"

    .line 200
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setArticleAlwaysDownloading(Z)V

    const-string v3, "downloadError"

    .line 201
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setDownloadErrorEnabled(Z)V

    const-string/jumbo v3, "yJDebugScreen"

    .line 202
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setIsYJDebugScreenEnabled(Z)V

    const/4 v3, 0x0

    const-string v4, "forceUpsellFlag"

    .line 203
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setForceUpsellType(Ljava/lang/String;)V

    const-string v3, "enableYJReplicaContent"

    .line 204
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setmIsYJReplicaEnabled(Z)V

    :cond_0
    return-void
.end method
