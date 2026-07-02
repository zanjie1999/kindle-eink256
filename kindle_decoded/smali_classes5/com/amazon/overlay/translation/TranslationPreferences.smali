.class public Lcom/amazon/overlay/translation/TranslationPreferences;
.super Ljava/lang/Object;
.source "TranslationPreferences.java"


# direct methods
.method public static getDestinationLanguagePreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v0, "TranslationReaderPluginPreferences"

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "TranslationSavedDestinationLanguageTag"

    const/4 v1, 0x0

    .line 46
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setDestinationLanguagePreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TranslationReaderPluginPreferences"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "TranslationSavedDestinationLanguageTag"

    .line 31
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
