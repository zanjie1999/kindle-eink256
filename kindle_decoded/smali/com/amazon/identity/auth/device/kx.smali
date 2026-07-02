.class public Lcom/amazon/identity/auth/device/kx;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final sH:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kx;->sH:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    return-void
.end method


# virtual methods
.method public hB()Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kx;->sH:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    return-object v0
.end method
