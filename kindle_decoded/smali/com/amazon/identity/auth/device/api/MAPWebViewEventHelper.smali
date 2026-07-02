.class public final Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AUTHENTICATION_EVENT:Ljava/lang/String; = "authentication_event"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final AUTHENTICATION_ONLY_EVENT:Ljava/lang/String; = "authentication_only_event"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_EVENT:Ljava/lang/String; = "error_event"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_EVENT_VALUE:Ljava/lang/String; = "error_event_value"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERRORS:Ljava/lang/String; = "errors"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_EVENT_TYPE:Ljava/lang/String; = "event_type"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final gD:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->gD:Landroid/os/Bundle;

    return-void
.end method

.method private aH(Ljava/lang/String;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->gD:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isAuthenticationEvent()Z
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "event_type"

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->aH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->gD:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authentication_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isErrorEvent()Z
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "event_type"

    .line 68
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->aH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPWebViewEventHelper;->gD:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
