.class public interface abstract Lcom/amazon/kcp/application/IAndroidApplicationController;
.super Ljava/lang/Object;
.source "IAndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IKindleApplicationController;


# virtual methods
.method public abstract activityResumed(Lcom/amazon/kcp/redding/ReddingActivity;)V
.end method

.method public abstract activityStarted(Landroid/app/Activity;)V
.end method

.method public abstract activityStopped()V
.end method

.method public abstract activityStoppedDueToConfigChange()V
.end method

.method public abstract clearSettings()V
.end method

.method public abstract getActiveActivities()I
.end method

.method public abstract getActiveContext()Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAppVersionNumber()J
.end method

.method public abstract getAppWanDownloadLimit()I
.end method

.method public abstract getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentActivity()Landroid/app/Activity;
.end method

.method public abstract getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
.end method

.method public abstract getOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPathForKRFCache()Ljava/lang/String;
.end method

.method public abstract getPlatformSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract getVersionString()Ljava/lang/String;
.end method

.method public abstract isAppVisible()Z
.end method

.method public abstract isBetaApp()Z
.end method

.method public abstract reportBackgroundMetric()V
.end method

.method public abstract safeOpenUrl(Ljava/lang/String;)V
.end method

.method public abstract setCurrentActivity(Landroid/app/Activity;)V
.end method

.method public abstract setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Landroid/app/Activity;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Z)V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;I)V
.end method

.method public abstract startSettingsActivity(Ljava/lang/String;)V
.end method
