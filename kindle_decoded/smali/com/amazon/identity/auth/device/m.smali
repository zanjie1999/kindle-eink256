.class public final Lcom/amazon/identity/auth/device/m;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final aQ:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 19
    sput-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 20
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x7

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 22
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/16 v2, 0x8

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 24
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x4

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 26
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x5

    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 28
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x3

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 30
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 32
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const/4 v2, 0x6

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 88
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.amazon.dcp.sso.ErrorMessage"

    .line 89
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result p2

    const-string p3, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.amazon.map.error.errorMessage"

    .line 91
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.amazon.map.error.errorType"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/m;->e(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 167
    :cond_1
    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/m;->b(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 66
    invoke-virtual {p1, p5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 69
    :cond_1
    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {p1}, Lcom/amazon/identity/auth/device/m;->w(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {p2}, Lcom/amazon/identity/auth/device/m;->d(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    const-string p0, "errorCode"

    .line 147
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "errorMessage"

    .line 148
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static d(I)Ljava/lang/Integer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    sget-object v0, Lcom/amazon/identity/auth/device/m;->aQ:Landroid/util/SparseIntArray;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/os/Bundle;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.amazon.dcp.sso.ErrorCode"

    .line 179
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "errorCode"

    .line 180
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.amazon.map.error.errorCode"

    .line 181
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static w(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->ACCOUNT_ALREADY_EXISTS:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 214
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "Account has already been registered on this device"

    .line 212
    invoke-static {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 219
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
