.class Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;
.super Ljava/lang/Object;
.source "StandaloneMAPRegistrationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

.field final synthetic val$activity:Ljava/lang/ref/WeakReference;

.field final synthetic val$extraOption:Landroid/os/Bundle;

.field final synthetic val$failureCallback:Lcom/amazon/foundation/IStringCallback;

.field final synthetic val$successCallback:Lcom/amazon/foundation/IStringCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

    iput-object p2, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$activity:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    iput-object p4, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$failureCallback:Lcom/amazon/foundation/IStringCallback;

    iput-object p5, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$extraOption:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->this$0:Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;

    iget-object v1, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$activity:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    iget-object v3, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$failureCallback:Lcom/amazon/foundation/IStringCallback;

    iget-object v4, p0, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager$2;->val$extraOption:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;->access$101(Lcom/amazon/kindle/map/StandaloneMAPRegistrationManager;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V

    return-void
.end method
