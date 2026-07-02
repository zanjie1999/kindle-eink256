.class Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;
.super Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.DefaultAuthenticationMethod"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->None:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    return-void
.end method


# virtual methods
.method getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 0
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

    .line 30
    sget-object p1, Lcom/amazon/identity/auth/device/api/DefaultAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p2, "The AuthenticationType is not supported, so using DefaultAuthenticationMethod but doing nothing."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x5

    const/4 p2, 0x0

    const-string p3, "Probably you are passing non-exist authentication type. Please check AuthenticationType"

    .line 1288
    invoke-static {p5, p1, p3, p2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object p5
.end method
