.class public Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$GetAccountForMappingsUserAction;,
        Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$DoesAccountHaveMappingAction;,
        Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$RemoveAccountMappingsUserAction;,
        Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$SetAccountMappingsUserAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.accounts.MultipleAccountsCommunication"


# instance fields
.field private final aY:Lcom/amazon/identity/auth/device/dn;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->mContext:Landroid/content/Context;

    .line 204
    new-instance p1, Lcom/amazon/identity/auth/device/dn;

    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->REGISTER_FAILED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 208
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.ErrorCode"

    const-string v3, "com.amazon.dcp.sso.ErrorMessage"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/amazon/identity/auth/device/dn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    return-void
.end method

.method private static O(Ljava/lang/String;)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 296
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "mappings"

    .line 297
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 299
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 301
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 303
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "type"

    .line 304
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "value"

    .line 305
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.amazon.dcp.sso.property.sessionuser"

    .line 309
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 311
    new-instance v4, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$SessionUserMappingType;-><init>()V

    goto :goto_3

    :cond_1
    const-string v6, "com.amazon.dcp.sso.property.account.extratokens.account_profiles"

    .line 313
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 315
    invoke-static {v4}, Lcom/amazon/identity/auth/device/jb;->dz(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 318
    new-instance v4, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$ProfileMappingType;-><init>(I)V

    goto :goto_3

    .line 322
    :cond_2
    sget-object v5, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    const-string v6, "%s is not a valid profile id"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v6, "com.amazon.dcp.sso.property.account.extratokens.account_packages"

    .line 325
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 327
    new-instance v5, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    invoke-direct {v5, v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v4, v5

    goto :goto_3

    :cond_4
    const-string v6, "com.amazon.dcp.sso.property.account.extratokens.custom_keys"

    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 331
    new-instance v5, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;

    invoke-direct {v5, v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$CustomKeyMappingType;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "primary_account_type"

    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 335
    new-instance v4, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PrimaryUserMappingType;-><init>()V

    goto :goto_3

    :cond_6
    :goto_2
    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_7

    .line 340
    aput-object v4, v1, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v1

    :catch_0
    move-exception p0

    .line 348
    sget-object v1, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    const-string v2, "Could not deserialize all mappings"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic P(Ljava/lang/String;)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->O(Ljava/lang/String;)[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 8

    .line 263
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 266
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 268
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "type"

    .line 269
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "value"

    .line 270
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->getAccountMappingValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "mappings"

    .line 275
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 281
    sget-object v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    const-string v1, "Could not seralize all mappings"

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->a([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 1

    .line 238
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$DoesAccountHaveMappingAction;->parametersToBundle(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$DoesAccountHaveMappingAction;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 240
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$DoesAccountHaveMappingAction;->getResult(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public varargs getAccountForMapping([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 2

    .line 214
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$GetAccountForMappingsUserAction;->parametersToBundle([Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v1, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$GetAccountForMappingsUserAction;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$GetAccountForMappingsUserAction;->getResult(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAccountMappingOwner(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Ljava/lang/String;
    .locals 1

    .line 247
    sget-object p1, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    const-string v0, "getAccountMappingOwner() currently is not supported on 1P devices"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntentToRemoveAccountMapping(Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/content/Intent;
    .locals 1

    .line 255
    sget-object p1, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->TAG:Ljava/lang/String;

    const-string v0, "getIntentToRemoveAccountMapping() currently is not supported on 1P devices"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 1

    .line 230
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$RemoveAccountMappingsUserAction;->parametersToBundle(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;

    move-result-object p1

    .line 231
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$RemoveAccountMappingsUserAction;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 232
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$RemoveAccountMappingsUserAction;->getResult(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public varargs setAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z
    .locals 1

    .line 222
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$SetAccountMappingsUserAction;->parametersToBundle(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Landroid/os/Bundle;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication;->aY:Lcom/amazon/identity/auth/device/dn;

    const-class v0, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$SetAccountMappingsUserAction;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/identity/auth/device/dn;->a(Ljava/lang/Class;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/amazon/identity/auth/accounts/MultipleAccountsCommunication$SetAccountMappingsUserAction;->getResult(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
