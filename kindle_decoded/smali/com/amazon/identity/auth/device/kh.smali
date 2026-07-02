.class public Lcom/amazon/identity/auth/device/kh;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private rY:Lcom/amazon/identity/auth/device/kf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/kf;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/identity/auth/device/kh;->rY:Lcom/amazon/identity/auth/device/kf;

    return-void
.end method

.method public hr()Lcom/amazon/identity/auth/device/kf;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kh;->rY:Lcom/amazon/identity/auth/device/kf;

    return-object v0
.end method
