.class Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;
.super Ljava/lang/Object;
.source "MAPRegistrationManager.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/map/MAPRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrationCallback"
.end annotation


# instance fields
.field private failureCallback:Lcom/amazon/foundation/IStringCallback;

.field private successCallback:Lcom/amazon/foundation/ICallback;

.field final synthetic this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/map/MAPRegistrationManager;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->successCallback:Lcom/amazon/foundation/ICallback;

    .line 340
    iput-object p3, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->failureCallback:Lcom/amazon/foundation/IStringCallback;

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->failureCallback:Lcom/amazon/foundation/IStringCallback;

    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-static {v1, p1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$200(Lcom/amazon/kindle/map/MAPRegistrationManager;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 345
    iget-object p1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;->successCallback:Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_0

    .line 346
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_0
    return-void
.end method
