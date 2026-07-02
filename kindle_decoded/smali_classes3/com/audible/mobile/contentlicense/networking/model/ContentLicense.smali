.class public final Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;
.super Ljava/lang/Object;
.source "ContentLicense.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    }
.end annotation


# instance fields
.field private final acr:Lcom/audible/mobile/domain/ACR;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acr"
    .end annotation
.end field

.field private final contentMetadata:Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_metadata"
    .end annotation
.end field

.field private final denialReasons:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license_denial_reasons"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;",
            ">;"
        }
    .end annotation
.end field

.field private final drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "drm_type"
    .end annotation
.end field

.field private final license:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license_response"
    .end annotation
.end field

.field private final licenseId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license_id"
    .end annotation
.end field

.field private final pdfUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pdf_url"
    .end annotation
.end field

.field private final refreshDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_date"
    .end annotation
.end field

.field private final removalDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "removal_date"
    .end annotation
.end field

.field private final requestId:Lcom/audible/mobile/domain/RequestId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_id"
    .end annotation
.end field

.field private final statusCode:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAcr()Lcom/audible/mobile/domain/ACR;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->acr:Lcom/audible/mobile/domain/ACR;

    return-object v0
.end method

.method public final getContentMetadata()Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->contentMetadata:Lcom/audible/mobile/contentlicense/networking/model/ContentMetadata;

    return-object v0
.end method

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

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->denialReasons:Ljava/util/List;

    return-object v0
.end method

.method public final getDrmType()Lcom/audible/mobile/contentlicense/networking/request/DrmType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->drmType:Lcom/audible/mobile/contentlicense/networking/request/DrmType;

    return-object v0
.end method

.method public final getLicense()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->license:Ljava/lang/String;

    return-object v0
.end method

.method public final getLicenseId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->licenseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPdfUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->pdfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshDate()Ljava/util/Date;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->refreshDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getRemovalDate()Ljava/util/Date;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->removalDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getRequestId()Lcom/audible/mobile/domain/RequestId;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->requestId:Lcom/audible/mobile/domain/RequestId;

    return-object v0
.end method

.method public final getStatusCode()Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;->statusCode:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    return-object v0
.end method
