.class public Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "ReaderNotificationsDebugMenu.java"


# static fields
.field private static final GAMMA_ENABLED:Ljava/lang/String; = "gamma_endpoint_enabled"

.field private static final NOTIFICATIONS_PREFERENCES:Ljava/lang/String; = "push_notifications_preferences"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static isGammaEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "push_notifications_preferences"

    .line 62
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "gamma_endpoint_enabled"

    .line 63
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Push Notifications Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "push_notifications_preferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 33
    sget v3, Lcom/amazon/reader/notifications/sdk/common/R$layout;->push_notifications_debug_menu:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 35
    sget v3, Lcom/amazon/reader/notifications/sdk/common/R$id;->gamma_checkbox:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const-string v4, "gamma_endpoint_enabled"

    .line 36
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    new-instance v1, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu$1;-><init>(Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method
