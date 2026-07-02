.class public Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    const-class v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/callback/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/callback/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/Callback;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/callback/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/callback/IRemoteCallback;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    return-void
.end method

.method public static toRemoteCallback(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/callback/IRemoteCallback;
    .locals 1

    .line 100
    new-instance v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper$a;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-gt v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    invoke-interface {v3, p1}, Lcom/amazon/identity/auth/device/callback/IRemoteCallback;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    .line 150
    :cond_0
    sget-object v3, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Not calling onError because mCallback is null"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 160
    sget-object v4, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v5, "NullPointerException onError"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 156
    sget-object v4, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onError callback failed"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-gt v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    invoke-interface {v3, p1}, Lcom/amazon/identity/auth/device/callback/IRemoteCallback;->onSuccess(Landroid/os/Bundle;)V

    goto :goto_1

    .line 119
    :cond_0
    sget-object v3, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Not calling onSuccess because mCallback is null"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 129
    sget-object v4, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v5, "NullPointerException onSuccess"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 125
    sget-object v4, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onSuccess callback failed"

    invoke-static {v4, v5, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 174
    iget-object p2, p0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->mCallback:Lcom/amazon/identity/auth/device/callback/IRemoteCallback;

    if-eqz p2, :cond_0

    .line 176
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
