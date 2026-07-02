.class public interface abstract Lcom/amazon/kcp/application/IAppSettingsController;
.super Ljava/lang/Object;
.source "IAppSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;,
        Lcom/amazon/kcp/application/IAppSettingsController$Setting;
    }
.end annotation


# virtual methods
.method public abstract clearUserSensitiveData()V
.end method

.method public abstract getAuthPortalCountries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthPortalDomains()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthPortalHandles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrashBitValue()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDcpSettings(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDisableFTUELoadingScreen()Z
.end method

.method public abstract getLastAppUpgradeVersion()J
.end method

.method public abstract getLastCrashDetectionTime()J
.end method

.method public abstract getLaunchTo()Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;
.end method

.method public abstract getLaunchToNotification()Z
.end method

.method public abstract getLibraryLastUpgradedVersion()J
.end method

.method public abstract getMinSoftwareVersion()J
.end method

.method public abstract getPreviousAndroidVersion()J
.end method

.method public abstract getPreviousVersion()J
.end method

.method public abstract getReaderFontToastViewCount()I
.end method

.method public abstract getSilentUpdatesEnabled()Z
.end method

.method public abstract getSubpixelRendering()Z
.end method

.method public abstract hasFixedCollectionsSorting()Z
.end method

.method public abstract hasFixedLibrarySorting()Z
.end method

.method public abstract hasMigratedAccountToUserSettings()Z
.end method

.method public abstract hasMigratedDocumentSizeInformation()Z
.end method

.method public abstract hasMigratedDocuments()Z
.end method

.method public abstract isFirstStart()Z
.end method

.method public abstract isFreshAppInstall()Z
.end method

.method public abstract isFreshMopDeprecationEnabled()Z
.end method

.method public abstract isTopSearchDownloadRetryNeeded()Z
.end method

.method public abstract isYJSupportedByBlacklist()Z
.end method

.method public abstract isYJSupportedBySniffTest()Z
.end method

.method public abstract registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method

.method public abstract setAppUpgradedToRubyVersionTime(J)V
.end method

.method public abstract setAuthPortalMappings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCrashBitValue(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setDcpSettings(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDisableFTUELoadingScreen(Z)V
.end method

.method public abstract setHasFixedCollectionsSorting(Z)V
.end method

.method public abstract setHasFixedLibrarySorting(Z)V
.end method

.method public abstract setHasMigratedAccountToUserSettings(Z)V
.end method

.method public abstract setHasMigratedDocumentSizeInformation(Z)V
.end method

.method public abstract setHasMigratedDocuments(Z)V
.end method

.method public abstract setIsFreshAppInstall(Z)V
.end method

.method public abstract setIsFreshMopDeprecationEnabled(Z)V
.end method

.method public abstract setIsYJSupportedByBlacklist(Z)V
.end method

.method public abstract setIsYJSupportedBySniffTest(Z)V
.end method

.method public abstract setKfaToKfcMigrationNotificationPeriodInDays(I)V
.end method

.method public abstract setLastAnrDetectionTime(J)V
.end method

.method public abstract setLastAppUpgradeVersion(J)V
.end method

.method public abstract setLastReadRenderElementDimen(II)V
.end method

.method public abstract setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V
.end method

.method public abstract setLaunchToNotification(Z)V
.end method

.method public abstract setLibraryLastUpgradedVersion(J)V
.end method

.method public abstract setMinSoftwareVersion(J)V
.end method

.method public abstract setPreviousAndroidVersion(J)V
.end method

.method public abstract setPreviousVersion(J)V
.end method

.method public abstract setReaderFontToastViewCount(I)V
.end method

.method public abstract setSilentUpdatesEnabled(Z)V
.end method

.method public abstract setTopSearchDownloadRetryNeeded(Z)V
.end method

.method public abstract unregisterSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
.end method
