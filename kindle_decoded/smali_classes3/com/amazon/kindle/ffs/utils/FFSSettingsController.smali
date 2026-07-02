.class public final Lcom/amazon/kindle/ffs/utils/FFSSettingsController;
.super Ljava/lang/Object;
.source "FFSSettingsController.kt"

# interfaces
.implements Lcom/amazon/kindle/ffs/utils/IFFSSettingsController;


# static fields
.field public static final DEVICE_SETUP_OVER_BLUETOOTH:Ljava/lang/String; = "DEVICE_SETUP_OVER_BLUETOOTH"

.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

.field private static final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSettingsController;

    .line 13
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFFSSharedPreferencesValue()Z
    .locals 3

    .line 16
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FFSSettings"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DEVICE_SETUP_OVER_BLUETOOTH"

    .line 18
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFFSSharedPreferencesValue(Z)V
    .locals 3

    .line 22
    sget-object v0, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FFSSettings"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEVICE_SETUP_OVER_BLUETOOTH"

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    :cond_0
    sget-object v0, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->Companion:Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;->setLastTimeIsOn(Z)V

    .line 33
    sget-object p1, Lcom/amazon/kindle/ffs/utils/FFSSettingsController;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    new-instance v0, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->publishFFSSettingsEvent(Lcom/amazon/kindle/ffs/model/FfsSettingsEvent;)V

    return-void
.end method
