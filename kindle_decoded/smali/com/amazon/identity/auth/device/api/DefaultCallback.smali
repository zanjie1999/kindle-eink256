.class public Lcom/amazon/identity/auth/device/api/DefaultCallback;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# static fields
.field private static final fW:Lcom/amazon/identity/auth/device/api/DefaultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/api/DefaultCallback;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/DefaultCallback;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/DefaultCallback;->fW:Lcom/amazon/identity/auth/device/api/DefaultCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nullToDefault(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 0

    if-nez p0, :cond_0

    .line 26
    sget-object p0, Lcom/amazon/identity/auth/device/api/DefaultCallback;->fW:Lcom/amazon/identity/auth/device/api/DefaultCallback;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    return-void
.end method
