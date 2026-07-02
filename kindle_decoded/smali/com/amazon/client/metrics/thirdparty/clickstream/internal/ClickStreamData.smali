.class public final enum Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;
.super Ljava/lang/Enum;
.source "ClickStreamData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final ALLOWED_OVERRIDES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum COUNTRY_OF_RESIDENCE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum DEVICE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum ECOMMERCE_PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum END_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum GROUPING_ASIN:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum HIT_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IMPRESSION_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IMPRESSION_METADATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IMPRESSION_PROGRAM_GROUP:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IMPRESSION_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum INFO:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IP_ADDRESS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IS_CUSTOMER_HIT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IS_GLANCE_VIEW:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IS_PRIME_CUSTOMER:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum MARKETPLACE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum MARKETPLACE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum NON_ANONYMOUS_CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum NON_ANONYMOUS_SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum ORDER_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum PAGE_ASSEMBLY_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum PAGE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum PRODUCT_GLID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum REQUEST_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum SITE_VARIANT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum START_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum SUB_PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum TAB_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum TEAM_NAME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum WEBLAB:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

.field public static final enum WEBLAB_CLIENT_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 18
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v1, 0x0

    const-string v2, "REQUEST_ID"

    const-string v3, "RequestId"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->REQUEST_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 19
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v2, 0x1

    const-string v3, "SESSION_ID"

    const-string v4, "Session"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 20
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v3, 0x2

    const-string v4, "CUSTOMER_ID"

    const-string v5, "CustomerId"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 21
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v4, 0x3

    const-string v5, "END_TIME"

    const-string v6, "EndTime"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->END_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 22
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v5, 0x4

    const-string v6, "START_TIME"

    const-string v7, "StartTime"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->START_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 23
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v6, 0x5

    const-string v7, "IP_ADDRESS"

    const-string v8, "REMOTE_ADDR"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IP_ADDRESS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 24
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v7, 0x6

    const-string v8, "USER_AGENT"

    const-string v9, "HTTP_USER_AGENT"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 25
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/4 v8, 0x7

    const-string v9, "MARKETPLACE_ID"

    const-string v10, "Marketplaceid"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->MARKETPLACE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 26
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v9, 0x8

    const-string v10, "MARKETPLACE"

    const-string v11, "Marketplace"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->MARKETPLACE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 27
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v10, 0x9

    const-string v11, "DEVICE_TYPE_ID"

    const-string v12, "deviceTypeID"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->DEVICE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 28
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v11, 0xa

    const-string v12, "INFO"

    const-string v13, "Info"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->INFO:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 29
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v12, 0xb

    const-string v13, "COUNTRY_OF_RESIDENCE"

    const-string v14, "cor"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->COUNTRY_OF_RESIDENCE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 30
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0xc

    const-string v14, "NON_ANONYMOUS_SESSION_ID"

    const-string/jumbo v15, "nonAnonymousSessionId"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 31
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v14, 0xd

    const-string v15, "NON_ANONYMOUS_CUSTOMER_ID"

    const-string/jumbo v13, "nonAnonymousCustomerId"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 32
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0xe

    const-string v15, "ANONYMOUS"

    const-string v14, "anonymous"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 38
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v14, 0xf

    const-string v15, "PAGE_TYPE"

    const-string/jumbo v13, "page-type"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 39
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0x10

    const-string v15, "HIT_TYPE"

    const-string v14, "hitType"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->HIT_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 40
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v14, 0x11

    const-string v15, "TEAM_NAME"

    const-string/jumbo v13, "team-name"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TEAM_NAME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 41
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0x12

    const-string v15, "SITE_VARIANT"

    const-string/jumbo v14, "site_variant"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SITE_VARIANT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 43
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v14, 0x13

    const-string v15, "PAGE_ACTION"

    const-string/jumbo v13, "page-action"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 44
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0x14

    const-string v15, "SUB_PAGE_TYPE"

    const-string/jumbo v14, "sub-page-type"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 45
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v14, 0x15

    const-string v15, "PAGE_TYPE_ID"

    const-string/jumbo v13, "page-type-id"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 46
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "TAB_ID"

    const/16 v15, 0x16

    const-string/jumbo v14, "tab-id"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TAB_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 47
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "PAGE_ASSEMBLY_TYPE"

    const/16 v14, 0x17

    const-string/jumbo v15, "pageAssemblyType"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 48
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IS_CUSTOMER_HIT"

    const/16 v14, 0x18

    const-string v15, "is-customer-hit"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 49
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IS_PRIME_CUSTOMER"

    const/16 v14, 0x19

    const-string v15, "is-prime-customer"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 51
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "GROUPING_ASIN"

    const/16 v14, 0x1a

    const-string v15, "groupingASIN"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 52
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "PRODUCT_GLID"

    const/16 v14, 0x1b

    const-string v15, "ProductGlId"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 58
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "WEBLAB_CLIENT_ID"

    const/16 v14, 0x1c

    const-string/jumbo v15, "wl-client-id"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->WEBLAB_CLIENT_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 59
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "WEBLAB"

    const/16 v14, 0x1d

    const-string/jumbo v15, "wl"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->WEBLAB:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 65
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "ECOMMERCE_PAGE_ACTION"

    const/16 v14, 0x1e

    const-string v15, "ecommerce-page-action"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ECOMMERCE_PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 66
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "ORDER_DATA"

    const/16 v14, 0x1f

    const-string/jumbo v15, "order-data"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ORDER_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 68
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IS_PRIME_ELIGIBLE_ITEM"

    const/16 v14, 0x20

    const-string v15, "is-prime-eligible-item"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 69
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IS_GLANCE_VIEW"

    const/16 v14, 0x21

    const-string v15, "is-glance-view"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_GLANCE_VIEW:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 74
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IMPRESSION_PROGRAM_GROUP"

    const/16 v14, 0x22

    const-string/jumbo v15, "programGroup"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_PROGRAM_GROUP:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 75
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IMPRESSION_TYPE"

    const/16 v14, 0x23

    const-string v15, "impressionType"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 76
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IMPRESSION_DATA"

    const/16 v14, 0x24

    const-string v15, "impressionData"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 77
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const-string v13, "IMPRESSION_METADATA"

    const/16 v14, 0x25

    const-string v15, "impressionMetadata"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_METADATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v13, 0x26

    new-array v13, v13, [Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 14
    sget-object v14, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->REQUEST_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->END_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->START_TIME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IP_ADDRESS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->MARKETPLACE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->MARKETPLACE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->DEVICE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->INFO:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->COUNTRY_OF_RESIDENCE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_SESSION_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->NON_ANONYMOUS_CUSTOMER_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ANONYMOUS:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->HIT_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TEAM_NAME:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SITE_VARIANT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->TAB_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->WEBLAB_CLIENT_ID:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->WEBLAB:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ECOMMERCE_PAGE_ACTION:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1e

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ORDER_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x1f

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x20

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IS_GLANCE_VIEW:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x21

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_PROGRAM_GROUP:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x22

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_TYPE:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x23

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->IMPRESSION_DATA:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    const/16 v2, 0x24

    aput-object v1, v13, v2

    const/16 v1, 0x25

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ALLOWED_OVERRIDES:Ljava/util/List;

    .line 82
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->USER_AGENT:Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->mName:Ljava/lang/String;

    return-void
.end method

.method public static isOverrideAllowed(Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;)Z
    .locals 1

    .line 105
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->ALLOWED_OVERRIDES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/clickstream/internal/ClickStreamData;->mName:Ljava/lang/String;

    return-object v0
.end method
