.class Lcom/amazon/identity/auth/device/bi$a;
.super Ljava/util/TimerTask;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic gY:Lcom/amazon/identity/auth/device/bi;


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/bi;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi$a;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/bi;B)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/bi$a;-><init>(Lcom/amazon/identity/auth/device/bi;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$a;->gY:Lcom/amazon/identity/auth/device/bi;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->TIMEOUT_SERVICE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const-string v2, "No response received from the service"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void
.end method
