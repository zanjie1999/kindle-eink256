.class Lcom/amazon/ea/debug/AnyActionsDebugMenu$5;
.super Ljava/lang/Object;
.source "AnyActionsDebugMenu.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/debug/AnyActionsDebugMenu;->initializeAutoShelfSettings(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 107
    sget p1, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client_no:I

    const-string/jumbo v0, "purchase.client.useglidev2"

    const-string v1, "anyactions.debugsettings"

    if-ne p2, p1, :cond_0

    .line 108
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->deletePreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_0
    sget p1, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client_glide:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method
