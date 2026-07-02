.class Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$5;
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

    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$5;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences$5;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsPreferences;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->performUpsellFullSyncFromSampleJson(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
