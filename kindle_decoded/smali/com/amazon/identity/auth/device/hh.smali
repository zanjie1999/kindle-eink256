.class public final Lcom/amazon/identity/auth/device/hh;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static qj:Lcom/amazon/identity/auth/device/hh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gm()Lcom/amazon/identity/auth/device/hh;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/identity/auth/device/hh;->qj:Lcom/amazon/identity/auth/device/hh;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/hh;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/hh;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/hh;->qj:Lcom/amazon/identity/auth/device/hh;

    .line 18
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/hh;->qj:Lcom/amazon/identity/auth/device/hh;

    return-object v0
.end method
