.class Lcom/amazon/ea/debug/AnyActionsDebugMenu$9;
.super Ljava/lang/Object;
.source "AnyActionsDebugMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/debug/AnyActionsDebugMenu;->initializeOneTapSettings(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 149
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->toggleOneTapFakePurchasesEnabled()V

    return-void
.end method
