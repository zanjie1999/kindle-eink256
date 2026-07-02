.class public final Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "InAppNotificationsDebugMenu.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->kinapp_debug_menu_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    sget v1, Lcom/amazon/kindle/inapp/notifications/R$layout;->notifications_debug_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/LinearLayout;

    .line 29
    sget v1, Lcom/amazon/kindle/inapp/notifications/R$id;->open_notifications_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/Button;

    .line 30
    new-instance v2, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$1;-><init>(Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget v1, Lcom/amazon/kindle/inapp/notifications/R$id;->use_kinapp_gamma:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.CheckBox"

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/CheckBox;

    .line 37
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v3}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getUseGamma()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    new-instance v3, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$2;

    invoke-direct {v3}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$2;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    sget v1, Lcom/amazon/kindle/inapp/notifications/R$id;->delete_request_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/widget/CheckBox;

    .line 45
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getDeleteRequestFail()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    new-instance v2, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$3;

    invoke-direct {v2}, Lcom/amazon/kindle/inapp/notifications/debug/InAppNotificationsDebugMenu$getView$3;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
