.class Lcom/amazon/kcp/debug/DebugActivity$7;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$7;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 476
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAppSettingsController;->setDisableFTUELoadingScreen(Z)V

    return-void
.end method
