.class Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;
.super Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.InProcessOauthAuthenticationMethod"

.field private static final gc:J


# instance fields
.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->gc:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    .line 40
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    const-string p2, "dcp_token_mangement"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 42
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "[B",
            "Lcom/amazon/identity/auth/device/bl;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Could not authenticate request because we could not get an access token"

    const-string p3, "OAuth authentication has to be over https"

    const/4 p4, 0x2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "https"

    .line 73
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 1288
    invoke-static {p5, p1, p3, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 78
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-object p5

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    const/4 v5, 0x0

    sget-wide v6, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->gc:J

    .line 85
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2288
    invoke-static {p5, p4, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 92
    sget-object p1, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object p5

    .line 96
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "x-amz-access-token"

    .line 97
    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/jm;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    .line 101
    invoke-virtual {p5, p2}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p5

    :catch_0
    move-exception p1

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Getting Access Token failed because of TimeoutException. This happens when the timeout passed into the future object occurs. Exception message: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5288
    invoke-static {p5, v0, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 170
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Getting Access Token failed failed because of ExecutionException. This can happen when the thread or task was aborted. Exception message: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4288
    invoke-static {p5, v0, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 159
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Getting Access Token failed because of InterruptedException. This can happen if the caller kills the thread or asnc task that is calling MAP\'s api. Exception message: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3288
    invoke-static {p5, v0, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 148
    sget-object p2, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 148
    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 107
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "Getting Access Token failed because of callback error. Error Bundle: "

    if-eqz p1, :cond_4

    const-string p3, "com.amazon.identity.mobi.account.recover.context"

    .line 112
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 115
    invoke-static {p3}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object p3

    .line 116
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v1

    .line 118
    sget-object p3, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "com.amazon.dcp.sso.ErrorCode"

    .line 119
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p4, v2

    const/4 v2, 0x1

    const-string v3, "com.amazon.dcp.sso.ErrorMessage"

    .line 120
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    const-string v2, "Received an error when calling getAtzAccessToken. ErrorCode: %d ErrorMessage: %s "

    .line 118
    invoke-static {p3, v2, p4}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_3
    sget-object p3, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 124
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_4
    sget-object p3, Lcom/amazon/identity/auth/device/api/InProcessOauthAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p4, "Getting Access Token failed because of callback error. No error bundle"

    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p5, v0, p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-object p5
.end method
