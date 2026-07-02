.class Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$2;
.super Ljava/lang/Object;
.source "PeriodicalsDebugSettingsPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 110
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 111
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    const-string v2, "tap_tutorial_instances"

    invoke-static {v1, p1, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;->access$000(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->setNbOfTapToTextTutorialViews(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
