.class Lcom/amazon/kcp/application/AndroidUpdateManager$1;
.super Ljava/lang/Object;
.source "AndroidUpdateManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidUpdateManager;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAppSettingsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidUpdateManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidUpdateManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager$1;->this$0:Lcom/amazon/kcp/application/AndroidUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 123
    sget-object p1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager$1;->this$0:Lcom/amazon/kcp/application/AndroidUpdateManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->showForcedUpdateDialogIfNeeded()Z

    :cond_0
    return-void
.end method
