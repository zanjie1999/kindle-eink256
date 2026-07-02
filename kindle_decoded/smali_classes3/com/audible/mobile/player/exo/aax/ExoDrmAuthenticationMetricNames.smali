.class final enum Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;
.super Ljava/lang/Enum;
.source "ExoDrmAuthenticationMetricNames.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDN_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDN_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDN_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDN_FILE_AUTHENTICATION_TIMER:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDS_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDS_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

.field public static final enum EXO_DRM_CDS_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 7
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v1, 0x0

    const-string v2, "EXO_DRM_CDS_AUTHENTICATION_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 9
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v2, 0x1

    const-string v3, "EXO_DRM_CDN_AUTHENTICATION_SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 11
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v3, 0x2

    const-string v4, "EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 13
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v4, 0x3

    const-string v5, "EXO_DRM_CDS_AUTHENTICATION_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 15
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v5, 0x4

    const-string v6, "EXO_DRM_CDN_AUTHENTICATION_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 17
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v6, 0x5

    const-string v7, "EXO_DRM_CDS_AUTHENTICATION_FAILURE_SDK"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 19
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v7, 0x6

    const-string v8, "EXO_DRM_CDN_AUTHENTICATION_FAILURE_SDK"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 24
    new-instance v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/4 v8, 0x7

    const-string v9, "EXO_DRM_CDN_FILE_AUTHENTICATION_TIMER"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_FILE_AUTHENTICATION_TIMER:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    .line 5
    sget-object v10, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v10, v9, v1

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_SUCCESS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v2

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_AUTHENTICATION_FAILURE_ILLEGAL_ARGUMENTS:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v3

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v4

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v5

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDS_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v6

    sget-object v1, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->EXO_DRM_CDN_AUTHENTICATION_FAILURE_SDK:Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->$VALUES:[Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;
    .locals 1

    .line 5
    const-class v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;
    .locals 1

    .line 5
    sget-object v0, Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->$VALUES:[Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/exo/aax/ExoDrmAuthenticationMetricNames;

    return-object v0
.end method
