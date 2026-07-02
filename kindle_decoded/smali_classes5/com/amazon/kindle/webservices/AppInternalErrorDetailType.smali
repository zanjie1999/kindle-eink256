.class public final enum Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;
.super Ljava/lang/Enum;
.source "AppInternalErrorDetailType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_ADM_UNKNOWN:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_ADP_SIGNING_FAILED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_BOOKITEM_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_FAIL_STATUS_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_MANIFEST_PROVIDER_EXCEPTION:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_MANIFEST_REJECTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_NON_DISPLAYABLE_SERVER_ERROR:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_OKHTTP_REQUEST_ALREADY_EXECUTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_REQUEST_NOT_QUEUED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_REQUEST_ONCOMPLETE_REJECTED_DOWNLOAD:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

.field public static final enum APP_INTERNAL_ERROR_UNKNOWN_MIMETYPE:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 4
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v1, 0x0

    const-string v2, "APP_INTERNAL_ERROR_BOOKITEM_NULL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_BOOKITEM_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 5
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v2, 0x1

    const-string v3, "APP_INTERNAL_ERROR_REQUEST_NOT_QUEUED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_NOT_QUEUED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 6
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v3, 0x2

    const-string v4, "APP_INTERNAL_ERROR_MANIFEST_REJECTED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_REJECTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 7
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v4, 0x3

    const-string v5, "APP_INTERNAL_ERROR_NON_DISPLAYABLE_SERVER_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_NON_DISPLAYABLE_SERVER_ERROR:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 8
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v5, 0x4

    const-string v6, "APP_INTERNAL_ERROR_FAIL_STATUS_NULL"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_FAIL_STATUS_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 9
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v6, 0x5

    const-string v7, "APP_INTERNAL_ERROR_ADM_UNKNOWN"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_ADM_UNKNOWN:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 10
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v7, 0x6

    const-string v8, "APP_INTERNAL_ERROR_UNKNOWN_MIMETYPE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_UNKNOWN_MIMETYPE:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/4 v8, 0x7

    const-string v9, "APP_INTERNAL_ERROR_REQUEST_ONCOMPLETE_REJECTED_DOWNLOAD"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_ONCOMPLETE_REJECTED_DOWNLOAD:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 12
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/16 v9, 0x8

    const-string v10, "APP_INTERNAL_ERROR_OKHTTP_REQUEST_ALREADY_EXECUTED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_OKHTTP_REQUEST_ALREADY_EXECUTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 13
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/16 v10, 0x9

    const-string v11, "APP_INTERNAL_ERROR_MANIFEST_PROVIDER_EXCEPTION"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_PROVIDER_EXCEPTION:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 14
    new-instance v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/16 v11, 0xa

    const-string v12, "APP_INTERNAL_ERROR_ADP_SIGNING_FAILED"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_ADP_SIGNING_FAILED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    .line 3
    sget-object v13, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_BOOKITEM_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_NOT_QUEUED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_REJECTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_NON_DISPLAYABLE_SERVER_ERROR:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_FAIL_STATUS_NULL:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_ADM_UNKNOWN:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_UNKNOWN_MIMETYPE:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_ONCOMPLETE_REJECTED_DOWNLOAD:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_OKHTTP_REQUEST_ALREADY_EXECUTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_PROVIDER_EXCEPTION:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->$VALUES:[Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->$VALUES:[Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    return-object v0
.end method
