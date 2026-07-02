.class public final Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;
.super Lcom/audible/mobile/networking/retrofit/exception/WebServiceApiValidationException;
.source "ContentLicenseStatusCodeException.kt"


# instance fields
.field private final denialReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;",
            ">;"
        }
    .end annotation
.end field

.field private final requestId:Lcom/audible/mobile/domain/RequestId;

.field private final statusCode:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;Lcom/audible/mobile/domain/RequestId;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;",
            "Lcom/audible/mobile/domain/RequestId;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/mobile/networking/retrofit/exception/WebServiceApiValidationException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->statusCode:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    iput-object p2, p0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->requestId:Lcom/audible/mobile/domain/RequestId;

    iput-object p3, p0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->denialReasons:Ljava/util/List;

    .line 21
    sget-object p2, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->GRANTED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "This exception should be raised only for non-granted ACLS response."

    .line 20
    invoke-static {p1, p2}, Lcom/audible/mobile/util/Assert;->isFalse(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDenialReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->denialReasons:Ljava/util/List;

    return-object v0
.end method

.method public final getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;->statusCode:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    return-object v0
.end method
