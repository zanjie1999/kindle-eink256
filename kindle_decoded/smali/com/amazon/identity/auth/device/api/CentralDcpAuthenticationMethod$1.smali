.class Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;
.super Lcom/amazon/identity/auth/device/ef;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fK:Lcom/amazon/identity/auth/device/ms;

.field final synthetic fL:Landroid/net/Uri;

.field final synthetic fM:Ljava/lang/String;

.field final synthetic fN:Ljava/util/Map;

.field final synthetic fO:[B

.field final synthetic fP:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Landroid/content/Context;Landroid/content/Intent;Lcom/amazon/identity/auth/device/ms;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fK:Lcom/amazon/identity/auth/device/ms;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fL:Landroid/net/Uri;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fM:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fN:Ljava/util/Map;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fO:[B

    iput-object p9, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fP:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/identity/auth/device/ef;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public useService(Landroid/os/IBinder;)V
    .locals 11

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fK:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 95
    sget-object v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->fJ:Ljava/lang/String;

    const-string v1, "getAuthenticationParams"

    .line 96
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget-object v6, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fL:Landroid/net/Uri;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fM:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fN:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fO:[B

    .line 1130
    invoke-static {p1}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object p1

    .line 1132
    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v4, v4, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    .line 1133
    iget-object v5, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v5, v5, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    .line 1135
    sget-object v8, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 1138
    sget-object v10, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v10}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v8, v2

    move-object v9, v3

    .line 1145
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v3, Lcom/amazon/identity/auth/device/features/Feature;->DirectedIdSupported:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 1148
    invoke-interface/range {v2 .. v8}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequestByDirectedId(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1

    goto :goto_2

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1158
    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1159
    iget-object v3, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v3

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 1160
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v10, v2

    goto :goto_1

    :cond_3
    move-object v10, v1

    :goto_1
    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v10

    .line 1162
    invoke-interface/range {v2 .. v9}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->getAuthenticationParametersForRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1

    .line 1171
    :goto_2
    sget-object v2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_3
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fP:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    :goto_4
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ef;->doneUsingService()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 110
    :try_start_1
    sget-object v2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v3, "Unknown error during getAuthenticationBundle execution."

    invoke-static {v2, v3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    new-instance v2, Lcom/amazon/dcp/sso/ReturnValueOrError;

    const/4 v3, 0x5

    .line 113
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/amazon/dcp/sso/ReturnValueOrError;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fP:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 103
    :try_start_2
    sget-object v2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v3, "Could not receive request authentication from dcp!"

    invoke-static {v2, v3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance p1, Lcom/amazon/dcp/sso/ReturnValueOrError;

    const/4 v2, 0x6

    const-string v3, "Connection to DCP has been lost"

    invoke-direct {p1, v2, v3}, Lcom/amazon/dcp/sso/ReturnValueOrError;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 117
    :goto_5
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;->fP:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 119
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ef;->doneUsingService()V

    .line 120
    throw p1
.end method
