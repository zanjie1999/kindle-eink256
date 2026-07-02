.class Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$6;
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

    .line 157
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$6;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 160
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/amazon/nwstd/service/upsell/UpsellFullSyncHandler;->unregisterAlarm(Landroid/content/Context;)V

    const-string v0, "Unregistered upsell sync alarms"

    .line 164
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v1
.end method
