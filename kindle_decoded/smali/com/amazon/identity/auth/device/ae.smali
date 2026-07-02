.class public Lcom/amazon/identity/auth/device/ae;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ae"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    const-string v0, "dcp_amazon_account_man"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ae;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One or more arguments are null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Z(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ae;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/identity/auth/device/ae;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ae;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.amazon.dcp.sso.property.devicename"

    if-nez p1, :cond_0

    goto :goto_0

    .line 2276
    :cond_0
    iget-object p0, p0, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/gs;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2278
    :goto_0
    sget-object p0, Lcom/amazon/identity/auth/device/ae;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v1, "Store the new device name with key: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic aa(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 3250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "new_device_name"

    .line 3251
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/identity/auth/device/ae;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 257
    sget-object v0, Lcom/amazon/identity/auth/device/ae;->TAG:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Rename Device Error: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p4}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->m(I)V

    .line 259
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/identity/auth/device/ae;->d(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method private d(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code_key"

    .line 265
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "error_message_key"

    .line 266
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result p3

    const-string p4, "com.amazon.map.error.errorCode"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "com.amazon.map.error.errorMessage"

    .line 269
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.map.error.errorType"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private h(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "key_package_name_for_renaming_child_device_3p_devices"

    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/amazon/identity/auth/device/dc;

    invoke-direct {v0, p5, p1, p6, p7}, Lcom/amazon/identity/auth/device/dc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    .line 243
    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/identity/auth/device/dc;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;)Lcom/amazon/identity/auth/device/db;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/db;->cC()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    move-object v7, p3

    .line 60
    sget-object v1, Lcom/amazon/identity/auth/device/ae;->TAG:Ljava/lang/String;

    const-string v2, "Start to process rename device request"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/ae;->h(Landroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v1, "key_package_name_for_renaming_child_device_3p_devices"

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1302
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/amazon/identity/auth/device/ek;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be found or trusted to rename child device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1306
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->UNRECOGNIZED_PACKAGE_NAME:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/16 v5, 0x9

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v4, v6

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1313
    :cond_0
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->NO_OVERRIDDEN_CHILD_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/16 v5, 0xa

    const-string v4, "The package doesn\'t have overridden child device type to rename child device."

    const-string v6, "The package doesn\'t have overridden child device type to rename child device."

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 1329
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mw;->bc(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1333
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->PACKAGE_RUNNING_ON_FIRST_PARTY_DEVICE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const/16 v5, 0xb

    const-string v4, "The package is running on 1p devices and cannot rename child device."

    const-string v6, "The package is running on 1p devices and cannot rename child device."

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x0

    :cond_2
    if-eqz v10, :cond_3

    .line 69
    invoke-direct {p0, v8}, Lcom/amazon/identity/auth/device/ae;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->br(Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move-object v10, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 80
    :try_start_0
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 92
    :cond_5
    new-instance v1, Lcom/amazon/identity/auth/device/le;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/le;-><init>()V

    move-object v3, p2

    .line 96
    invoke-virtual {v1, p2}, Lcom/amazon/identity/auth/device/le;->ew(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 100
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v4, "Invalid device name.  The device name cannot be null or empty."

    const/4 v5, 0x3

    const-string v6, "Invalid device name.  The device name cannot be null or empty."

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_3
    iget-object v0, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_6
    :try_start_1
    new-instance v5, Lcom/amazon/identity/auth/device/ae$1;

    move-object/from16 v3, p4

    invoke-direct {v5, p0, v3, v2, p1}, Lcom/amazon/identity/auth/device/ae$1;-><init>(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p3}, Lcom/amazon/identity/auth/device/ae;->h(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2210
    invoke-direct {p0, v10}, Lcom/amazon/identity/auth/device/ae;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2211
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2214
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;->CANNOT_DETERMINE_OVERRIDE_DEVICE_TYPE:Lcom/amazon/identity/auth/device/api/MAPError$AttributeError;

    const-string v4, "Unable to determine the override device type. The child device type is null"

    const/16 v5, 0x8

    const-string v6, "Cannot determine the override device type, child device type is null."

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v2, "com.amazon.dcp.sso.token.device.adptoken"

    .line 2222
    invoke-static {v10, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    new-instance v3, Lcom/amazon/identity/auth/device/gi;

    iget-object v4, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;)V

    .line 2224
    invoke-virtual {v3, p1, v2}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2226
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/le;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/lg;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/lg;-><init>()V

    iget-object v6, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p5

    .line 2225
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/identity/auth/device/ae;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    goto :goto_3

    .line 189
    :cond_8
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/le;->hq()Lcom/amazon/identity/auth/device/ma;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/lg;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/lg;-><init>()V

    iget-object v6, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p5

    .line 188
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/identity/auth/device/ae;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/kcpsdk/common/WebResponseParser;Lcom/amazon/identity/auth/device/kl;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V

    goto :goto_3

    :cond_9
    :goto_4
    move-object/from16 v3, p4

    .line 84
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    const-string v4, "The provided amazon account could not be found on the device."

    const/4 v5, 0x6

    const-string v6, "The provided amazon account could not be found on the device."

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->b(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 200
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/device/ae;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught Exception during rename device "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 204
    :goto_5
    iget-object v1, v9, Lcom/amazon/identity/auth/device/ae;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bs(Ljava/lang/String;)V

    .line 205
    throw v0
.end method
