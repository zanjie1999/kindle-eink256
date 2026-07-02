.class public Lcom/amazon/device/ads/ApplicationDefaultPreferences;
.super Ljava/lang/Object;
.source "ApplicationDefaultPreferences.java"


# static fields
.field static defaultPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static getDefaultPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->defaultPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->defaultPreferences:Landroid/content/SharedPreferences;

    return-void
.end method
