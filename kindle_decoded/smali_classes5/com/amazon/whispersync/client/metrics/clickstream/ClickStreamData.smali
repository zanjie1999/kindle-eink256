.class public final enum Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;
.super Ljava/lang/Enum;
.source "ClickStreamData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum COUNTRY_OF_RESIDENCE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum CUSTOMER_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum DEVICE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum ECOMMERCE_PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum END_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum GROUPING_ASIN:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum HIT_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IMPRESSION_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IMPRESSION_METADATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IMPRESSION_PROGRAM_GROUP:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IMPRESSION_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum INFO:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IP_ADDRESS:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IS_CUSTOMER_HIT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IS_GLANCE_VIEW:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IS_PRIME_CUSTOMER:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum MARKETPLACE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum MARKETPLACE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum ORDER_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum PAGE_ASSEMBLY_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum PAGE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum PRODUCT_GLID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum REQUEST_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum SESSION_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum SITE_VARIANT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum START_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum SUB_PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum TAB_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum TEAM_NAME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

.field public static final enum USER_AGENT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v1, 0x0

    const-string v2, "REQUEST_ID"

    const-string v3, "RequestId"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->REQUEST_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v2, 0x1

    const-string v3, "SESSION_ID"

    const-string v4, "Session"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SESSION_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v3, 0x2

    const-string v4, "CUSTOMER_ID"

    const-string v5, "CustomerId"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->CUSTOMER_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v4, 0x3

    const-string v5, "END_TIME"

    const-string v6, "EndTime"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->END_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v5, 0x4

    const-string v6, "START_TIME"

    const-string v7, "StartTime"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->START_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 20
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v6, 0x5

    const-string v7, "IP_ADDRESS"

    const-string v8, "REMOTE_ADDR"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IP_ADDRESS:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v7, 0x6

    const-string v8, "USER_AGENT"

    const-string v9, "HTTP_USER_AGENT"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->USER_AGENT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/4 v8, 0x7

    const-string v9, "MARKETPLACE_ID"

    const-string v10, "Marketplaceid"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->MARKETPLACE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 23
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v9, 0x8

    const-string v10, "MARKETPLACE"

    const-string v11, "Marketplace"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->MARKETPLACE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 24
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v10, 0x9

    const-string v11, "DEVICE_TYPE_ID"

    const-string v12, "deviceTypeID"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->DEVICE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 25
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v11, 0xa

    const-string v12, "INFO"

    const-string v13, "Info"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->INFO:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 26
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v12, 0xb

    const-string v13, "COUNTRY_OF_RESIDENCE"

    const-string v14, "cor"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->COUNTRY_OF_RESIDENCE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 32
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0xc

    const-string v14, "PAGE_TYPE"

    const-string/jumbo v15, "page-type"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v14, 0xd

    const-string v15, "HIT_TYPE"

    const-string v13, "hitType"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->HIT_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0xe

    const-string v15, "TEAM_NAME"

    const-string/jumbo v14, "team-name"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TEAM_NAME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 35
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v14, 0xf

    const-string v15, "SITE_VARIANT"

    const-string/jumbo v13, "site-variant"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SITE_VARIANT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 37
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0x10

    const-string v15, "PAGE_ACTION"

    const-string/jumbo v14, "page-action"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 38
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v14, 0x11

    const-string v15, "SUB_PAGE_TYPE"

    const-string/jumbo v13, "sub-page-type"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 39
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0x12

    const-string v15, "PAGE_TYPE_ID"

    const-string/jumbo v14, "page-type-id"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 40
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v14, 0x13

    const-string v15, "TAB_ID"

    const-string/jumbo v13, "tab-id"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TAB_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 41
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0x14

    const-string v15, "PAGE_ASSEMBLY_TYPE"

    const-string/jumbo v14, "pageAssemblyType"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 42
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v14, 0x15

    const-string v15, "IS_CUSTOMER_HIT"

    const-string v13, "is-customer-hit"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IS_PRIME_CUSTOMER"

    const/16 v15, 0x16

    const-string v14, "is-prime-customer"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 45
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "GROUPING_ASIN"

    const/16 v14, 0x17

    const-string v15, "groupingAsin"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 46
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "PRODUCT_GLID"

    const/16 v14, 0x18

    const-string/jumbo v15, "productGLID"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 52
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "ECOMMERCE_PAGE_ACTION"

    const/16 v14, 0x19

    const-string v15, "ecommerce-page-action"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ECOMMERCE_PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 53
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "ORDER_DATA"

    const/16 v14, 0x1a

    const-string/jumbo v15, "order-data"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ORDER_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 55
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IS_PRIME_ELIGIBLE_ITEM"

    const/16 v14, 0x1b

    const-string v15, "is-prime-eligible-item"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 56
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IS_GLANCE_VIEW"

    const/16 v14, 0x1c

    const-string v15, "is-glance-view"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_GLANCE_VIEW:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IMPRESSION_PROGRAM_GROUP"

    const/16 v14, 0x1d

    const-string/jumbo v15, "programGroup"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_PROGRAM_GROUP:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 62
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IMPRESSION_TYPE"

    const/16 v14, 0x1e

    const-string v15, "impressionType"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IMPRESSION_DATA"

    const/16 v14, 0x1f

    const-string v15, "impressionData"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 64
    new-instance v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const-string v13, "IMPRESSION_METADATA"

    const/16 v14, 0x20

    const-string v15, "impressionMetadata"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_METADATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v13, 0x21

    new-array v13, v13, [Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    .line 11
    sget-object v14, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->REQUEST_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SESSION_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->CUSTOMER_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->END_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->START_TIME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IP_ADDRESS:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->USER_AGENT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->MARKETPLACE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->MARKETPLACE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->DEVICE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->INFO:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->COUNTRY_OF_RESIDENCE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->HIT_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TEAM_NAME:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SITE_VARIANT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->SUB_PAGE_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_TYPE_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->TAB_ID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PAGE_ASSEMBLY_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_CUSTOMER_HIT:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_CUSTOMER:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->GROUPING_ASIN:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->PRODUCT_GLID:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ECOMMERCE_PAGE_ACTION:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x19

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->ORDER_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1a

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_PRIME_ELIGIBLE_ITEM:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1b

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IS_GLANCE_VIEW:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1c

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_PROGRAM_GROUP:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1d

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_TYPE:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1e

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->IMPRESSION_DATA:Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    const/16 v2, 0x1f

    aput-object v1, v13, v2

    const/16 v1, 0x20

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->$VALUES:[Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation

    .line 77
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->values()[Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/client/metrics/MetricsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid ClickStreamData"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/MetricsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->$VALUES:[Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/clickstream/ClickStreamData;->mName:Ljava/lang/String;

    return-object v0
.end method
