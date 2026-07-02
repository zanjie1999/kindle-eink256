.class public final Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
.super Ljava/lang/Exception;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/fl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuthTokenManagerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x66109c21f7597cafL


# instance fields
.field private mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

.field private mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

.field private final mError:Lcom/amazon/identity/auth/device/api/MAPError;

.field private final mErrorMessage:Ljava/lang/String;

.field private final mLegacyErrorCode:I

.field private final mLegacyErrorMessage:Ljava/lang/String;

.field private final mShouldClearAuthCookies:Z


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V
    .locals 2

    .line 101
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->LEGACY_ERROR_CODE_NOT_SUPPORTED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 103
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    const-string v1, "Legacy MAP error code is not supported. Please refer com.amazon.identity.auth.device.api.MAPError"

    .line 101
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    iput p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    .line 111
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    const/4 p3, 0x0

    .line 112
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    .line 113
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 115
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V
    .locals 0

    .line 137
    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 138
    iput p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    .line 139
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    const/4 p3, 0x0

    .line 141
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    .line 142
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 143
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;B)V
    .locals 0

    .line 154
    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 155
    iput p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    .line 156
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    .line 157
    iput-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    const/4 p3, 0x0

    .line 158
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    .line 159
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 160
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V
    .locals 0

    .line 171
    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 172
    iput p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    .line 173
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    .line 174
    iput-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 175
    iput-object p6, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    .line 176
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 177
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 1

    .line 121
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    iput p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    .line 123
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    const/4 p3, 0x0

    .line 124
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    .line 125
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 126
    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    .line 127
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return-void
.end method


# virtual methods
.method public bD()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorCode:I

    return v0
.end method

.method public bE()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mLegacyErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public eE()Lcom/amazon/identity/auth/device/fl;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAccountRecoverContext:Lcom/amazon/identity/auth/device/fl;

    return-object v0
.end method

.method public fV()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mAuthEndpointError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    return-object v0
.end method

.method public fW()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mShouldClearAuthCookies:Z

    return v0
.end method

.method public getError()Lcom/amazon/identity/auth/device/api/MAPError;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mError:Lcom/amazon/identity/auth/device/api/MAPError;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
