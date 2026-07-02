.class public Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.source "PentosWebViewHelper.java"


# static fields
.field private static final LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

.field private static final METRIC_MAP_SIGNIN:Ljava/lang/String; = "MAPSignIn"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private isFirstSignIn:Z

.field private metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;

    invoke-static {v0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/amazon/adapt/mpp/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 24
    invoke-static {}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->getInstance()Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;-><init>(Landroid/app/Activity;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->isFirstSignIn:Z

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->isFirstSignIn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iput-boolean v1, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->isFirstSignIn:Z

    return-void

    :cond_0
    const-string v0, "ON_UNABLE_TO_GET_COOKIES"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "MAPSignIn"

    if-eqz v0, :cond_2

    .line 50
    sget-object p1, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User did not signin: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/adapt/mpp/logging/Logger;->info(Ljava/lang/String;)V

    const-string p1, "com.amazon.dcp.sso.ErrorCode"

    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 53
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object p1

    .line 56
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    if-ne p1, v0, :cond_1

    .line 57
    sget-object p1, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    const-string p2, "User pressed the back button."

    invoke-interface {p1, p2}, Lcom/amazon/adapt/mpp/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "com.amazon.dcp.sso.ErrorMessage"

    .line 61
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage"

    .line 59
    invoke-static {p2, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    sget-object v0, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {p2, v2, v1, v0, p1}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;Ljava/util/Map;)V

    .line 65
    :goto_0
    iget-object p1, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    const-string p2, "ON_REGISTRATION_SUCCESS"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    sget-object p1, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    const-string p2, "User signed in."

    invoke-interface {p1, p2}, Lcom/amazon/adapt/mpp/logging/Logger;->info(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    const/4 p2, 0x1

    sget-object v0, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    invoke-virtual {p1, v2, p2, v0}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;)V

    :cond_3
    :goto_1
    return-void
.end method
