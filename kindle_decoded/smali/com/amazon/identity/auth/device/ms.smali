.class public abstract Lcom/amazon/identity/auth/device/ms;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ms$b;,
        Lcom/amazon/identity/auth/device/ms$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    if-eqz p0, :cond_0

    .line 189
    new-instance v0, Lcom/amazon/identity/auth/device/ms$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/ms$a;-><init>(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 193
    :cond_0
    new-instance p0, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract eN(Ljava/lang/String;)V
.end method

.method public abstract iM()V
.end method

.method public abstract iN()V
.end method

.method public abstract iO()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
