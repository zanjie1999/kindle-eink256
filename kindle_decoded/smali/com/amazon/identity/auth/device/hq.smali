.class public Lcom/amazon/identity/auth/device/hq;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field final z:Lcom/amazon/identity/auth/device/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/amazon/identity/auth/device/w;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/w;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/hq;->z:Lcom/amazon/identity/auth/device/w;

    return-void
.end method
