.class public Lcom/amazon/identity/auth/device/kv;
.super Lcom/amazon/identity/auth/device/kw;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/kw<",
        "Lcom/amazon/identity/auth/device/ky;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.kv"

.field private static final sq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private bM:Ljava/lang/String;

.field private bi:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mP:Ljava/lang/String;

.field private oe:Ljava/lang/String;

.field private sA:Ljava/lang/String;

.field private sB:Ljava/lang/String;

.field private sC:Ljava/lang/String;

.field private sD:Ljava/lang/String;

.field private sE:Ljava/lang/String;

.field private final sF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sr:Ljava/lang/String;

.field private ss:I

.field private st:Lorg/json/JSONArray;

.field private su:Ljava/lang/String;

.field private sv:Ljava/lang/String;

.field private sw:Ljava/lang/String;

.field private sx:Ljava/lang/String;

.field private sy:Ljava/lang/String;

.field private sz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "account_pool"

    const-string v2, "device_name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/identity/auth/device/kv;->sq:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/kw;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/identity/auth/device/kv;->sq:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sF:Ljava/util/Set;

    .line 106
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/kv;->st:Lorg/json/JSONArray;

    return-void
.end method

.method private b(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)Lcom/amazon/identity/auth/device/ky;
    .locals 8

    .line 322
    new-instance v7, Lcom/amazon/identity/auth/device/kx;

    invoke-direct {v7, p1}, Lcom/amazon/identity/auth/device/kx;-><init>(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    .line 324
    new-instance p1, Lcom/amazon/identity/auth/device/ky;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/kx;)V

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/amazon/identity/auth/device/jz;)Lcom/amazon/identity/auth/device/ky;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/jz;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, " PandaResponseJsonParser: response received a %s challenge."

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "AuthenticationFailed"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "InvalidAuthenticationData"

    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/kx;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeChallengeResponse:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/kx;-><init>(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    goto :goto_1

    .line 393
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/identity/auth/device/kx;

    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/kx;-><init>(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V

    .line 401
    :goto_1
    new-instance v1, Lcom/amazon/identity/auth/device/ky;

    invoke-direct {v1, p1, v0}, Lcom/amazon/identity/auth/device/ky;-><init>(Lcom/amazon/identity/auth/device/jz;Lcom/amazon/identity/auth/device/kx;)V

    return-object v1
.end method

.method protected a(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Lcom/amazon/identity/auth/device/ky;
    .locals 1

    .line 283
    sget-object v0, Lcom/amazon/identity/auth/device/kv$1;->sG:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 306
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 301
    :pswitch_0
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeForbidden:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 302
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    goto :goto_0

    .line 298
    :pswitch_1
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerUnavailable:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 295
    :pswitch_2
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeServerError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 292
    :pswitch_3
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 289
    :pswitch_4
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 286
    :pswitch_5
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMissingValue:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 309
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/kv;->b(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected synthetic b(Lcom/amazon/identity/auth/device/jz;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kv;->a(Lcom/amazon/identity/auth/device/jz;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic b(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kv;->a(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1
.end method

.method protected u(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/ky;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "tokens"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bearer"

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "refresh_token"

    .line 120
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/kv;->mP:Ljava/lang/String;

    const-string v3, "access_token"

    .line 121
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/kv;->mAccessToken:Ljava/lang/String;

    const-string v3, "expires_in"

    .line 122
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jb;->dy(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amazon/identity/auth/device/kv;->ss:I

    :cond_0
    const-string/jumbo v1, "mac_dms"

    .line 124
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "adp_token"

    .line 127
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/kv;->a:Ljava/lang/String;

    const-string v3, "device_private_key"

    .line 128
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->sr:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "store_authentication_cookie"

    .line 130
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "cookie"

    .line 133
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->su:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "website_cookies"

    .line 135
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/kv;->st:Lorg/json/JSONArray;

    :cond_3
    const-string v0, "extensions"

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1174
    sget-object v1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 1175
    invoke-direct {p0, v1}, Lcom/amazon/identity/auth/device/kv;->b(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)Lcom/amazon/identity/auth/device/ky;

    move-result-object v1

    .line 1178
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "customer_info"

    .line 1179
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1182
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "account_pool"

    .line 1183
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1185
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sv:Ljava/lang/String;

    goto :goto_0

    .line 1187
    :cond_4
    iget-object v5, p0, Lcom/amazon/identity/auth/device/kv;->sF:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1189
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: account pool is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    const-string v4, "country_of_residence"

    .line 1193
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1195
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sw:Ljava/lang/String;

    :cond_6
    const-string/jumbo v4, "source_of_country_of_residence"

    .line 1198
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1200
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sx:Ljava/lang/String;

    :cond_7
    const-string v4, "home_region"

    .line 1203
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1205
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sy:Ljava/lang/String;

    :cond_8
    const-string/jumbo v4, "name"

    .line 1207
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1209
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->mName:Ljava/lang/String;

    goto :goto_1

    .line 1211
    :cond_9
    iget-object v5, p0, Lcom/amazon/identity/auth/device/kv;->sF:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1213
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: name is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    :goto_1
    const-string/jumbo v4, "preferred_marketplace"

    .line 1217
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1219
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sz:Ljava/lang/String;

    :cond_b
    const-string/jumbo v4, "user_id"

    .line 1221
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1223
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sA:Ljava/lang/String;

    :cond_c
    const-string v4, "given_name"

    .line 1225
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1227
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/kv;->sB:Ljava/lang/String;

    goto :goto_2

    .line 1229
    :cond_d
    iget-object v3, p0, Lcom/amazon/identity/auth/device/kv;->sF:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1231
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: given name is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    :goto_2
    const-string v3, "device_info"

    .line 1241
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1243
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "device_name"

    .line 1244
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1246
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->sC:Ljava/lang/String;

    goto :goto_3

    .line 1248
    :cond_f
    iget-object v4, p0, Lcom/amazon/identity/auth/device/kv;->sF:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1250
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: device name is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    :goto_3
    const-string v1, "device_serial_number"

    .line 1253
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1255
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->sD:Ljava/lang/String;

    :cond_11
    const-string v1, "alias"

    .line 1257
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1259
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->oe:Ljava/lang/String;

    :cond_12
    const-string v1, "device_type"

    .line 1261
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1263
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/kv;->bi:Ljava/lang/String;

    :cond_13
    const-string v1, "kindle_email_address"

    .line 1265
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1267
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sE:Ljava/lang/String;

    goto :goto_5

    .line 1272
    :cond_14
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: device info is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1237
    :cond_15
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v2, " PandaResponseJsonParser: customer info is missing"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v2, v1

    :cond_16
    :goto_5
    if-eqz v2, :cond_17

    return-object v2

    :cond_17
    const-string v0, "customer_id"

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/kv;->bM:Ljava/lang/String;

    .line 149
    sget-object p1, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const-string v0, " PandaResponseJsonParser: success response received"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p1, Lcom/amazon/identity/auth/device/ky;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/kv;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/kv;->mP:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/kv;->mAccessToken:Ljava/lang/String;

    iget v5, p0, Lcom/amazon/identity/auth/device/kv;->ss:I

    iget-object v6, p0, Lcom/amazon/identity/auth/device/kv;->sr:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/kv;->bM:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/ky;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/kx;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->st:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->c(Lorg/json/JSONArray;)V

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->su:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->er(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->k(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->j(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->l(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->m(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->n(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->b(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->c(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->d(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/kv;->sE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ky;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method protected v(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/ky;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/amazon/identity/auth/device/kv;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " PandaResponseJsonParser: response received a %s error."

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "code"

    .line 316
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "ProtocolError"

    .line 1333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeProtocolError:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto/16 :goto_0

    :cond_0
    const-string v0, "MethodNotAllowed"

    .line 1337
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeMethodNotAllowed:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_1
    const-string v0, "NotImplemented"

    .line 1341
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1343
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeNotImplemented:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_2
    const-string v0, "InvalidDirectedId"

    .line 1345
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1347
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDirectedId:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_3
    const-string v0, "InvalidDevice"

    .line 1349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1351
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidDevice:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_4
    const-string v0, "DeviceAlreadyRegistered"

    .line 1353
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1355
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_5
    const-string v0, "DuplicateDeviceName"

    .line 1357
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1359
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_6
    const-string v0, "InvalidToken"

    .line 1361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1363
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeInvalidTokenPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_7
    const-string v0, "DeviceNotRegistered"

    .line 1365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1367
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceNotRegisteredPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    :cond_8
    const-string v0, "Unauthorized"

    .line 1369
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1371
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnauthorizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    goto :goto_0

    .line 1375
    :cond_9
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognizedPanda:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;

    .line 317
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/kv;->b(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic w(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kv;->v(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic x(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kv;->u(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    return-object p1
.end method
