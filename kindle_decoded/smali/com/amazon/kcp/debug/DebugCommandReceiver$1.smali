.class Lcom/amazon/kcp/debug/DebugCommandReceiver$1;
.super Ljava/lang/Object;
.source "DebugCommandReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugCommandReceiver;->deregisterUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugCommandReceiver;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRegistrationManager()Lcom/amazon/kcp/application/IRegistrationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/amazon/kcp/application/IRegistrationManager;->deregisterPrimaryAccount(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method
