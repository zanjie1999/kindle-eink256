.class public Lcom/amazon/versioning/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field private static final AUTO_UPDATE_DEBUG_SETTINGS:Ljava/lang/String; = "AutomaticUpdateDebugSettings"

.field private static final ENABLE_UPDATE_PLUGIN:Ljava/lang/String; = "EnableUpdatePlugin"


# direct methods
.method public static isPluginEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "AutomaticUpdateDebugSettings"

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "EnableUpdatePlugin"

    const/4 v1, 0x1

    .line 24
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static setSharedPreference(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "AutomaticUpdateDebugSettings"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "EnableUpdatePlugin"

    .line 45
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static toggleUpdatePluginEnabled(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/amazon/versioning/util/DebugUtils;->isPluginEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/amazon/versioning/util/DebugUtils;->setSharedPreference(Landroid/content/Context;Z)V

    return-void
.end method
