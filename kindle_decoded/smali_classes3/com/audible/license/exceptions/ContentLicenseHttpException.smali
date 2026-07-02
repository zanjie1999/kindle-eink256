.class public final Lcom/audible/license/exceptions/ContentLicenseHttpException;
.super Lretrofit2/HttpException;
.source "ContentLicenseHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/exceptions/ContentLicenseHttpException$Companion;
    }
.end annotation


# instance fields
.field private final recoverable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/exceptions/ContentLicenseHttpException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/exceptions/ContentLicenseHttpException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lretrofit2/HttpException;)V
    .locals 3

    const-string v0, "httpException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    .line 16
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_1

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "000307"

    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_1

    :cond_1
    const/16 v0, 0x257

    const/16 v2, 0x1f4

    .line 24
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    if-le v2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    const/4 v1, 0x1

    .line 16
    :catch_0
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/audible/license/exceptions/ContentLicenseHttpException;->recoverable:Z

    return-void
.end method
