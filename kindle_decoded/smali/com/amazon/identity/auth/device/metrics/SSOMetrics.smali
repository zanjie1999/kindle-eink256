.class public final Lcom/amazon/identity/auth/device/metrics/SSOMetrics;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/metrics/SSOMetrics$SetAccountPropertiesFailureReason;,
        Lcom/amazon/identity/auth/device/metrics/SSOMetrics$CredentialActionFailureReason;,
        Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountManagerFailure;,
        Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.metrics.SSOMetrics"

.field private static mA:Lcom/amazon/identity/auth/device/mr;

.field private static mz:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static P(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mz:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V
    .locals 2

    .line 196
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 199
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "DeregistrationFailure"

    .line 198
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/RegistrationType;)V
    .locals 2

    .line 188
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/RegistrationType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_SECRET:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "RegistrationFailure"

    .line 190
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static bO(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "DeregistrationFailure"

    .line 206
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static bP(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 2

    .line 218
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    .line 220
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mA:Lcom/amazon/identity/auth/device/mr;

    const-string v1, "DeregistrationSubAuthTime"

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/ms;->a(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 3

    .line 295
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mm;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 299
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "WebViewLoadFailure"

    .line 297
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 370
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mA:Lcom/amazon/identity/auth/device/mr;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "GenericMetrics_SSO"

    .line 375
    invoke-interface {v0, v1, p0, p1}, Lcom/amazon/identity/auth/device/mr;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;I)V
    .locals 3

    .line 304
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSLError:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mm;->eP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "WebViewLoadFailure"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static eA()V
    .locals 2

    .line 390
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RenameDeviceRequestSuccess"

    .line 392
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized ey()V
    .locals 2

    const-class v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mz:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mA:Lcom/amazon/identity/auth/device/mr;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mz:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mn;->aP(Landroid/content/Context;)Lcom/amazon/identity/auth/device/mr;

    move-result-object v1

    sput-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mA:Lcom/amazon/identity/auth/device/mr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit v0

    return-void

    .line 180
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ez()Lcom/amazon/identity/auth/device/ms;
    .locals 3

    .line 211
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    .line 213
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->mA:Lcom/amazon/identity/auth/device/mr;

    const-string v1, "DeregistrationTime"

    const-string v2, "TotalDeregistrationTime"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/ms;->a(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    return-object v0
.end method

.method public static m(I)V
    .locals 2

    .line 397
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->ey()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unrecognized"

    goto :goto_0

    :pswitch_0
    const-string p0, "NoAmazonAccount"

    goto :goto_0

    :pswitch_1
    const-string p0, "NameAlreadyUsed"

    goto :goto_0

    :pswitch_2
    const-string p0, "ParseError"

    goto :goto_0

    :pswitch_3
    const-string p0, "InvalidInput"

    goto :goto_0

    :pswitch_4
    const-string p0, "AuthenticationFailed"

    goto :goto_0

    :pswitch_5
    const-string p0, "NetworkFailure"

    :goto_0
    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "RenameDeviceRequestFailure"

    .line 399
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->c(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
