.class public final Lcom/facebook/FacebookRequestError;
.super Ljava/lang/Object;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookRequestError$Category;,
        Lcom/facebook/FacebookRequestError$Range;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final EC_APP_NOT_INSTALLED:I = 0x1ca

.field private static final EC_APP_TOO_MANY_CALLS:I = 0x4

.field private static final EC_EXPIRED:I = 0x1cf

.field private static final EC_INVALID_SESSION:I = 0x66

.field private static final EC_INVALID_TOKEN:I = 0xbe

.field private static final EC_PASSWORD_CHANGED:I = 0x1cc

.field private static final EC_PERMISSION_DENIED:I = 0xa

.field private static final EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

.field private static final EC_SERVICE_UNAVAILABLE:I = 0x2

.field private static final EC_UNCONFIRMED_USER:I = 0x1d0

.field private static final EC_UNKNOWN_ERROR:I = 0x1

.field private static final EC_USER_CHECKPOINTED:I = 0x1cb

.field private static final EC_USER_TOO_MANY_CALLS:I = 0x11

.field private static final ERROR_CODE_FIELD_KEY:Ljava/lang/String; = "code"

.field private static final ERROR_CODE_KEY:Ljava/lang/String; = "error_code"

.field private static final ERROR_IS_TRANSIENT_KEY:Ljava/lang/String; = "is_transient"

.field private static final ERROR_KEY:Ljava/lang/String; = "error"

.field private static final ERROR_MESSAGE_FIELD_KEY:Ljava/lang/String; = "message"

.field private static final ERROR_MSG_KEY:Ljava/lang/String; = "error_msg"

.field private static final ERROR_REASON_KEY:Ljava/lang/String; = "error_reason"

.field private static final ERROR_SUB_CODE_KEY:Ljava/lang/String; = "error_subcode"

.field private static final ERROR_TYPE_FIELD_KEY:Ljava/lang/String; = "type"

.field private static final ERROR_USER_MSG_KEY:Ljava/lang/String; = "error_user_msg"

.field private static final ERROR_USER_TITLE_KEY:Ljava/lang/String; = "error_user_title"

.field private static final HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

.field private static final HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

.field private static final INVALID_MESSAGE_ID:I


# instance fields
.field private final batchRequestResult:Ljava/lang/Object;

.field private final category:Lcom/facebook/FacebookRequestError$Category;

.field private final connection:Ljava/net/HttpURLConnection;

.field private final errorCode:I

.field private final errorIsTransient:Z

.field private final errorMessage:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final errorUserMessage:Ljava/lang/String;

.field private final errorUserTitle:Ljava/lang/String;

.field private final exception:Lcom/facebook/FacebookException;

.field private final requestResult:Lorg/json/JSONObject;

.field private final requestResultBody:Lorg/json/JSONObject;

.field private final requestStatusCode:I

.field private final shouldNotifyUser:Z

.field private final subErrorCode:I

.field private final userActionMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x12b

    const/16 v2, 0xc8

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    .line 92
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    .line 93
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x190

    const/16 v2, 0x1f3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    .line 94
    new-instance v0, Lcom/facebook/FacebookRequestError$Range;

    const/16 v1, 0x1f4

    const/16 v2, 0x257

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/FacebookRequestError$Range;-><init>(IILcom/facebook/FacebookRequestError$1;)V

    sput-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 196
    invoke-direct/range {v0 .. v13}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    .line 118
    iput p2, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    .line 119
    iput p3, p0, Lcom/facebook/FacebookRequestError;->subErrorCode:I

    .line 120
    iput-object p4, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    .line 122
    iput-object p9, p0, Lcom/facebook/FacebookRequestError;->requestResultBody:Lorg/json/JSONObject;

    .line 123
    iput-object p10, p0, Lcom/facebook/FacebookRequestError;->requestResult:Lorg/json/JSONObject;

    .line 124
    iput-object p11, p0, Lcom/facebook/FacebookRequestError;->batchRequestResult:Ljava/lang/Object;

    .line 125
    iput-object p12, p0, Lcom/facebook/FacebookRequestError;->connection:Ljava/net/HttpURLConnection;

    .line 126
    iput-object p6, p0, Lcom/facebook/FacebookRequestError;->errorUserTitle:Ljava/lang/String;

    .line 127
    iput-object p7, p0, Lcom/facebook/FacebookRequestError;->errorUserMessage:Ljava/lang/String;

    .line 128
    iput-boolean p8, p0, Lcom/facebook/FacebookRequestError;->errorIsTransient:Z

    const/4 p4, 0x1

    const/4 p6, 0x0

    if-eqz p13, :cond_0

    .line 132
    iput-object p13, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    const/4 p5, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance p8, Lcom/facebook/FacebookServiceException;

    invoke-direct {p8, p0, p5}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    iput-object p8, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    const/4 p5, 0x0

    :goto_0
    const/4 p8, 0x0

    if-eqz p5, :cond_1

    .line 144
    sget-object p1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    const/4 p2, 0x0

    goto/16 :goto_8

    :cond_1
    if-eq p2, p4, :cond_d

    const/4 p5, 0x2

    if-ne p2, p5, :cond_2

    goto :goto_5

    :cond_2
    const/4 p5, 0x4

    if-eq p2, p5, :cond_c

    const/16 p5, 0x11

    if-ne p2, p5, :cond_3

    goto :goto_4

    :cond_3
    const/16 p5, 0xa

    if-eq p2, p5, :cond_b

    .line 151
    sget-object p5, Lcom/facebook/FacebookRequestError;->EC_RANGE_PERMISSION:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {p5, p2}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_3

    :cond_4
    const/16 p5, 0x66

    if-eq p2, p5, :cond_5

    const/16 p5, 0xbe

    if-ne p2, p5, :cond_e

    :cond_5
    const/16 p2, 0x1cb

    if-eq p3, p2, :cond_a

    const/16 p2, 0x1d0

    if-ne p3, p2, :cond_6

    goto :goto_2

    .line 160
    :cond_6
    sget-object p8, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    const/16 p2, 0x1ca

    if-eq p3, p2, :cond_9

    const/16 p2, 0x1cf

    if-ne p3, p2, :cond_7

    goto :goto_1

    :cond_7
    const/16 p2, 0x1cc

    if-ne p3, p2, :cond_8

    .line 165
    sget p2, Lcom/facebook/android/R$string;->com_facebook_requesterror_password_changed:I

    goto :goto_7

    .line 167
    :cond_8
    sget p2, Lcom/facebook/android/R$string;->com_facebook_requesterror_reconnect:I

    goto :goto_7

    .line 163
    :cond_9
    :goto_1
    sget p2, Lcom/facebook/android/R$string;->com_facebook_requesterror_relogin:I

    goto :goto_7

    .line 156
    :cond_a
    :goto_2
    sget-object p8, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    .line 157
    sget p2, Lcom/facebook/android/R$string;->com_facebook_requesterror_web_login:I

    goto :goto_7

    .line 152
    :cond_b
    :goto_3
    sget-object p8, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    .line 153
    sget p2, Lcom/facebook/android/R$string;->com_facebook_requesterror_permissions:I

    goto :goto_7

    .line 150
    :cond_c
    :goto_4
    sget-object p8, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_6

    .line 148
    :cond_d
    :goto_5
    sget-object p8, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    :cond_e
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-nez p8, :cond_11

    .line 174
    sget-object p3, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_CLIENT_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {p3, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 175
    sget-object p1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_8

    .line 176
    :cond_f
    sget-object p3, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SERVER_ERROR:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {p3, p1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 177
    sget-object p1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_8

    .line 179
    :cond_10
    sget-object p1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    goto :goto_8

    :cond_11
    move-object p1, p8

    :goto_8
    if-eqz p7, :cond_12

    .line 185
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_12

    goto :goto_9

    :cond_12
    const/4 p4, 0x0

    .line 187
    :goto_9
    iput-object p1, p0, Lcom/facebook/FacebookRequestError;->category:Lcom/facebook/FacebookRequestError$Category;

    .line 188
    iput p2, p0, Lcom/facebook/FacebookRequestError;->userActionMessageId:I

    .line 189
    iput-boolean p4, p0, Lcom/facebook/FacebookRequestError;->shouldNotifyUser:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 208
    invoke-direct/range {v0 .. v13}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    .locals 16

    move-object/from16 v0, p2

    .line 201
    instance-of v1, v0, Lcom/facebook/FacebookException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/facebook/FacebookException;

    move-object v15, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object v15, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 18

    move-object/from16 v10, p0

    const-string v0, "error_code"

    const-string v1, "error"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    const-string v3, "body"

    const-string v4, "code"

    const/4 v13, 0x0

    .line 394
    :try_start_0
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 395
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 396
    invoke-static {v10, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 399
    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_3

    .line 400
    move-object v9, v6

    check-cast v9, Lorg/json/JSONObject;

    .line 412
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    const-string v8, "error_subcode"

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v6, :cond_0

    .line 414
    :try_start_1
    invoke-static {v9, v1, v13}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "type"

    .line 416
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "message"

    .line 417
    invoke-virtual {v0, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 418
    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 419
    invoke-virtual {v0, v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v12, "error_user_msg"

    .line 420
    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "error_user_title"

    .line 421
    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "is_transient"

    .line 422
    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v15, v0

    move-object v7, v1

    const/4 v11, 0x1

    move/from16 v17, v8

    move-object v8, v6

    move/from16 v6, v17

    goto :goto_1

    .line 424
    :cond_0
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "error_msg"

    const-string v6, "error_reason"

    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v13

    move-object v8, v7

    move-object v12, v8

    move-object v14, v12

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v15, 0x0

    goto :goto_1

    .line 426
    :cond_2
    :goto_0
    invoke-virtual {v9, v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {v9, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 429
    invoke-virtual {v9, v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object v7, v1

    move-object v8, v4

    move-object v12, v13

    move-object v14, v12

    const/4 v11, 0x1

    const/4 v15, 0x0

    move v4, v0

    :goto_1
    if-eqz v11, :cond_3

    .line 434
    new-instance v16, Lcom/facebook/FacebookRequestError;

    move-object/from16 v0, v16

    move v1, v5

    move v2, v4

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v14

    move-object v7, v12

    move v8, v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V

    return-object v16

    .line 441
    :cond_3
    sget-object v0, Lcom/facebook/FacebookRequestError;->HTTP_RANGE_SUCCESS:Lcom/facebook/FacebookRequestError$Range;

    invoke-virtual {v0, v5}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 442
    new-instance v14, Lcom/facebook/FacebookRequestError;

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v10, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v15, v0

    goto :goto_2

    :cond_4
    move-object v15, v13

    :goto_2
    move-object v0, v14

    move v1, v5

    move v2, v4

    move v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move v8, v12

    move-object v9, v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v14

    :catch_0
    :cond_5
    return-object v13
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/facebook/FacebookException;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/facebook/FacebookRequestError;->exception:Lcom/facebook/FacebookException;

    return-object v0
.end method

.method public getRequestStatusCode()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{HttpStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/facebook/FacebookRequestError;->requestStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/facebook/FacebookRequestError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/FacebookRequestError;->errorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
