.class public Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;
.super Ljava/lang/Exception;
.source "DCP"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorBundleBytes:[B

.field private final mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0, v0}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;-><init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.amazon.dcp.sso.ErrorMessage"

    .line 1105
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 1111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 31
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_1

    .line 32
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    if-eqz p2, :cond_4

    .line 37
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    goto :goto_2

    .line 41
    :cond_4
    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result p2

    const-string v0, "com.amazon.map.error.errorCode"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorFromValue(I)Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 44
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 46
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorMessage:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string p2, "com.amazon.map.error.errorMessage"

    const-string p3, "An internal error occurs!"

    .line 50
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorMessage:Ljava/lang/String;

    .line 56
    :goto_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 59
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorBundleBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw p1
.end method


# virtual methods
.method public getError()Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    return-object v0
.end method

.method public getErrorBundle()Landroid/os/Bundle;
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorBundleBytes:[B

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorBundleBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
