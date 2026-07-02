.class public Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;
.super Ljava/lang/Object;
.source "RegistrationCallback.java"

# interfaces
.implements Lcom/amazon/kindle/dcaps/common/ResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "dcaps.registration.callback"

.field private static final mPrefix:Ljava/lang/String; = "registration.callback."


# instance fields
.field private data:Lcom/amazon/kindle/dcaps/common/LocalData;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/dcaps/common/LocalData;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;->data:Lcom/amazon/kindle/dcaps/common/LocalData;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;->data:Lcom/amazon/kindle/dcaps/common/LocalData;

    invoke-virtual {v0}, Lcom/amazon/kindle/dcaps/common/LocalData;->saveData()V

    const-string v0, "dcaps.registration.callback"

    const-string v1, "DCAPS Proxy could not be reached"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registration.callback.status."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    const-string p1, "registration.callback.failure"

    .line 107
    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 6

    const-string v0, "; "

    const-string v1, "dcaps.registration.callback"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 52
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully received response with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registration.callback.status."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    .line 61
    iget-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;->data:Lcom/amazon/kindle/dcaps/common/LocalData;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/dcaps/common/LocalData;->setStatus(Z)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;->data:Lcom/amazon/kindle/dcaps/common/LocalData;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/amazon/kindle/dcaps/common/LocalData;->setStatus(Z)V

    .line 68
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;->data:Lcom/amazon/kindle/dcaps/common/LocalData;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/common/LocalData;->saveData()V

    .line 70
    new-instance p1, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;-><init>(Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CSI of device is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->getCsi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "registration.callback.success"

    .line 75
    invoke-static {p1, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    goto :goto_1

    :cond_1
    const-string p2, "Reponse from server was not as expected"

    .line 78
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Message: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Details: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->getErrorDetails()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registration.callback.error."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/dcaps/registration/RegistrationResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "registration.callback.JSONException"

    .line 87
    invoke-static {p1, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    :goto_1
    return-void
.end method
