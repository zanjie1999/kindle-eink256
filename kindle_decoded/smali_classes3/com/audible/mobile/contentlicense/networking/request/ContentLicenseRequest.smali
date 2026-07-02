.class public Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;
.super Ljava/lang/Object;
.source "ContentLicenseRequest.java"


# static fields
.field private static final CHAPTER_INFO_RESPONSE_GROUP:Ljava/lang/String; = "chapter_info"

.field private static final CONTENT_REFERENCE_RESPONSE_GROUP:Ljava/lang/String; = "content_reference"

.field private static final LPH_RESPONSE_GROUP:Ljava/lang/String; = "last_position_heard"

.field private static final PDF_URL_RESPONSE_GROUP:Ljava/lang/String; = "pdf_url"

.field private static final RESPONSE_GROUP_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private acr:Lcom/audible/mobile/domain/ACR;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acr"
    .end annotation
.end field

.field private consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consumption_type"
    .end annotation
.end field

.field private playbackEndMs:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playback_end_ms"
    .end annotation
.end field

.field private playbackStartMs:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playback_start_ms"
    .end annotation
.end field

.field private quality:Lcom/audible/mobile/contentlicense/networking/request/Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quality"
    .end annotation
.end field

.field private responseGroups:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "response_groups"
    .end annotation
.end field

.field private rightsValidation:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rights_validation"
    .end annotation
.end field

.field private supportedDrmTypes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "supported_drm_types"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ">;"
        }
    .end annotation
.end field

.field private useAdaptiveBitrate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "use_adaptive_bit_rate"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/mobile/contentlicense/networking/request/DrmType;",
            ">;",
            "Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;",
            "Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;",
            "Lcom/audible/mobile/contentlicense/networking/request/Quality;",
            "Lcom/audible/mobile/domain/ACR;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZZ)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->supportedDrmTypes:Ljava/util/List;

    .line 78
    iput-object p2, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    .line 79
    iput-object p3, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->rightsValidation:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    .line 80
    iput-object p4, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->quality:Lcom/audible/mobile/contentlicense/networking/request/Quality;

    .line 81
    iput-object p7, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->useAdaptiveBitrate:Ljava/lang/Boolean;

    .line 82
    iput-object p8, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->playbackStartMs:Ljava/lang/Integer;

    .line 83
    iput-object p9, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->playbackEndMs:Ljava/lang/Integer;

    if-eqz p5, :cond_0

    .line 89
    sget-object p1, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p5}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p6}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    .line 90
    invoke-interface {p5}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/audible/mobile/domain/ACR;->NONE:Lcom/audible/mobile/domain/ACR;

    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    invoke-static {p6}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->acr:Lcom/audible/mobile/domain/ACR;

    .line 92
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->version:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_3
    iput-object p5, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->acr:Lcom/audible/mobile/domain/ACR;

    .line 95
    iput-object p6, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->version:Ljava/lang/String;

    .line 98
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "content_reference"

    .line 99
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_4

    const-string p2, "chapter_info"

    .line 102
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p11, :cond_5

    const-string p2, "pdf_url"

    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p12, :cond_6

    const-string p2, "last_position_heard"

    .line 110
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p2, ","

    .line 113
    invoke-static {p1, p2}, Lcom/audible/mobile/util/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/request/ContentLicenseRequest;->responseGroups:Ljava/lang/String;

    return-void
.end method
