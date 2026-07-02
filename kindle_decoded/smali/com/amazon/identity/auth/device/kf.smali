.class public Lcom/amazon/identity/auth/device/kf;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final rV:Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kf;->rV:Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;

    return-void
.end method


# virtual methods
.method public ho()Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kf;->rV:Lcom/amazon/identity/kcpsdk/auth/DeregisterDeviceErrorType;

    return-object v0
.end method
