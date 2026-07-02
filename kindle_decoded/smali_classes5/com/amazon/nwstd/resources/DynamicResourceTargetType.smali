.class public final enum Lcom/amazon/nwstd/resources/DynamicResourceTargetType;
.super Ljava/lang/Enum;
.source "DynamicResourceTargetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/resources/DynamicResourceTargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum TARGET_PAGE:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

.field public static final enum UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;


# instance fields
.field private mValueType:Lcom/amazon/nwstd/resources/DynamicResourceValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 8
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v3, 0x1

    const-string v4, "LIBRARY_BANNER_title"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 9
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v4, 0x2

    const-string v5, "LIBRARY_BANNER_description"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 10
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v5, 0x3

    const-string v6, "LIBRARY_BANNER_button_start"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 11
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v6, 0x4

    const-string v7, "LIBRARY_BANNER_button_cancel"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 12
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v7, 0x5

    const-string v8, "LIBRARY_BANNER_image"

    invoke-direct {v0, v8, v7, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 13
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v8, 0x6

    const-string v9, "BANNER_title"

    invoke-direct {v0, v9, v8, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 14
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v9, 0x7

    const-string v10, "BANNER_description"

    invoke-direct {v0, v10, v9, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 15
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v10, 0x8

    const-string v11, "BANNER_retail_description"

    invoke-direct {v0, v11, v10, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 16
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v11, 0x9

    const-string v12, "BANNER_button_shop"

    invoke-direct {v0, v12, v11, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 17
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v12, 0xa

    const-string v13, "FULL_PAGE_title"

    invoke-direct {v0, v13, v12, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 18
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v13, 0xb

    const-string v14, "BANNER_freq"

    invoke-direct {v0, v14, v13, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 19
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v14, 0xc

    const-string v15, "FULL_PAGE_description"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 20
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v15, 0xd

    const-string v14, "FULL_PAGE_retail_description"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 21
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v14, 0xe

    const-string v15, "FULL_PAGE_button_shop"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 22
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v15, 0xf

    const-string v14, "FULL_PAGE_freq"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 23
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v14, 0x10

    const-string v15, "FULL_PAGE_cover"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 24
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v15, 0x11

    const-string v14, "FULL_PAGE_card_background"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 25
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v14, 0x12

    const-string v15, "HOME_BANNER_title"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 26
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v15, 0x13

    const-string v14, "HOME_BANNER_description"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 27
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v14, 0x14

    const-string v15, "HOME_BANNER_button_start"

    invoke-direct {v0, v15, v14, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 28
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/16 v15, 0x15

    const-string v14, "HOME_BANNER_image"

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 29
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const-string v14, "HOME_BANNER_cardrank"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 30
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->ID:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const-string v14, "CAMPAIGN_ID"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 31
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->ID:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const-string v14, "FULL_SYNC_FREQ"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 32
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const-string v14, "TARGET_ASIN"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 33
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const-string v14, "TARGET_PAGE"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15, v1}, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;-><init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_PAGE:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v1, 0x1b

    new-array v1, v1, [Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    .line 6
    sget-object v14, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_button_cancel:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->LIBRARY_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->BANNER_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_retail_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_button_shop:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_freq:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_cover:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_PAGE_card_background:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_title:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_description:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_button_start:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_image:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->HOME_BANNER_cardrank:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->CAMPAIGN_ID:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->FULL_SYNC_FREQ:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->TARGET_ASIN:Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/nwstd/resources/DynamicResourceValueType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/resources/DynamicResourceValueType;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->mValueType:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceTargetType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/resources/DynamicResourceTargetType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/resources/DynamicResourceTargetType;

    return-object v0
.end method


# virtual methods
.method public getValueType()Lcom/amazon/nwstd/resources/DynamicResourceValueType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourceTargetType;->mValueType:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    return-object v0
.end method
