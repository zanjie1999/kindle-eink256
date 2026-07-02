.class public final Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.TokenRequestHelpers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1047
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    sget-object p2, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers;->TAG:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 1052
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->u(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1054
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->ck()Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
