.class Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;
.super Ljava/lang/Object;
.source "ReaderNotificationsDebugMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;

.field final synthetic val$gammaCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->this$0:Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;

    iput-object p2, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->val$gammaCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 40
    iget-object p1, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->val$gammaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "gamma_endpoint_enabled"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    iget-object p1, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;->this$0:Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;

    invoke-static {p1}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->access$000(Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Notifications.pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "CallCount"

    const/16 v1, 0xb

    .line 47
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v0, 0x0

    const-string/jumbo v1, "serializedDeviceAttributes"

    .line 48
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "endpointArn"

    .line 49
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastSuccessfulRegisteredTime"

    const-wide/16 v1, 0x0

    .line 50
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
