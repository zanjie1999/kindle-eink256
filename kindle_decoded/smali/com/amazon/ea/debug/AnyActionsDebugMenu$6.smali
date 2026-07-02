.class Lcom/amazon/ea/debug/AnyActionsDebugMenu$6;
.super Ljava/lang/Object;
.source "AnyActionsDebugMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "anyactions.debugsettings"

    const-string/jumbo v0, "purchase.client.glidev2.dontbuy"

    .line 122
    invoke-static {p1, v0, p2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
