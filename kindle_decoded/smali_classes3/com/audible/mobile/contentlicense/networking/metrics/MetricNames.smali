.class public final enum Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;
.super Ljava/lang/Enum;
.source "MetricNames.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSHttp200Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSHttp300Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSHttp400Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSHttp500Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSHttpException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseLicenseDegraded:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseLicenseDenied:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseLicenseError:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoCodec:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoContentLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoContentMetadata:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoContentUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoDrmType:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoOfflineUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSResponseNoStatusCode:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSUnknownException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

.field public static final enum ACLSWithChaptersMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 13
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v1, 0x0

    const-string v2, "ACLSResponseNoContentLicense"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 14
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v2, 0x1

    const-string v3, "ACLSResponseNoLicense"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 15
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v3, 0x2

    const-string v4, "ACLSResponseNoStatusCode"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoStatusCode:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 16
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v4, 0x3

    const-string v5, "ACLSResponseNoContentMetadata"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentMetadata:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 17
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v5, 0x4

    const-string v6, "ACLSResponseNoContentUrl"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 18
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v6, 0x5

    const-string v7, "ACLSResponseNoOfflineUrl"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoOfflineUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 19
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v7, 0x6

    const-string v8, "ACLSResponseNoCodec"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoCodec:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 20
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/4 v8, 0x7

    const-string v9, "ACLSResponseNoDrmType"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoDrmType:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 25
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v9, 0x8

    const-string v10, "ACLSResponseLicenseDenied"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDenied:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 26
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v10, 0x9

    const-string v11, "ACLSResponseLicenseDegraded"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDegraded:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 27
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v11, 0xa

    const-string v12, "ACLSResponseLicenseError"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseError:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 32
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v12, 0xb

    const-string v13, "ACLSUnknownException"

    invoke-direct {v0, v13, v12}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSUnknownException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 37
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v13, 0xc

    const-string v14, "ACLSHttpException"

    invoke-direct {v0, v14, v13}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttpException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 42
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v14, 0xd

    const-string v15, "ACLSHttp500Exception"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp500Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 47
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v15, 0xe

    const-string v14, "ACLSHttp400Exception"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp400Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 52
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v14, 0xf

    const-string v15, "ACLSHttp300Exception"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp300Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 57
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v15, 0x10

    const-string v14, "ACLSHttp200Exception"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp200Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 62
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v14, 0x11

    const-string v15, "ACLSMetricTimer"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 67
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v15, 0x12

    const-string v14, "ACLSWithChaptersMetricTimer"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSWithChaptersMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    .line 8
    sget-object v16, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoLicense:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoStatusCode:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentMetadata:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoContentUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoOfflineUrl:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoCodec:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseNoDrmType:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDenied:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseDegraded:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSResponseLicenseError:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSUnknownException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttpException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp500Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp400Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp300Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp200Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSMetricTimer:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;
    .locals 1

    .line 8
    const-class v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;
    .locals 1

    .line 8
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    return-object v0
.end method
