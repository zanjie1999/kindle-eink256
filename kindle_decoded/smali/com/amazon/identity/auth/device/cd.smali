.class public final Lcom/amazon/identity/auth/device/cd;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/cd$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.cd"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/ec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 1089
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/cd$1;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/cd$1;-><init>(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/amazon/device/information/contract/DeviceInformationContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/framework/RemoteMAPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CouldNotContactADIP:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    throw p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/identity/auth/device/cd;->TAG:Ljava/lang/String;

    return-object v0
.end method
