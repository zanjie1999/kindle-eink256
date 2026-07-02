.class public final enum Lcom/audible/sdk/AudibleSDK$MetadataTag;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetadataTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$MetadataTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_AACR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_AUTHOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_CATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_CDET:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_COPYRIGHT:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_COVER_ART:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_GUID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_LONG_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_NARRATOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PARENT_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PARENT_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PARENT_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PARENT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PROVIDER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_PUBLISH_DATE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_SHORT_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_SUBCATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_TRACK_NUMBER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

.field public static final enum AUD_TAG_VERS:Lcom/audible/sdk/AudibleSDK$MetadataTag;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 161
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x75

    const/16 v2, 0x61

    const/16 v3, 0x74

    const/16 v4, 0x40

    invoke-static {v4, v2, v1, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const/4 v6, 0x0

    const-string v7, "AUD_TAG_AUTHOR"

    invoke-direct {v0, v7, v6, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AUTHOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v5, 0x63

    invoke-static {v4, v5, v2, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v7

    const/4 v8, 0x1

    const-string v9, "AUD_TAG_CATEGORY"

    invoke-direct {v0, v9, v8, v7}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_CATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v7, 0x6f

    const/16 v9, 0x70

    invoke-static {v4, v5, v7, v9}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v10

    const/4 v11, 0x2

    const-string v12, "AUD_TAG_COPYRIGHT"

    invoke-direct {v0, v12, v11, v10}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_COPYRIGHT:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v10, 0x72

    invoke-static {v4, v5, v2, v10}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const/4 v12, 0x3

    const-string v13, "AUD_TAG_COVER_ART"

    invoke-direct {v0, v13, v12, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_COVER_ART:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 162
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v5, 0x65

    const/16 v13, 0x64

    const/16 v14, 0x6c

    invoke-static {v4, v14, v13, v5}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v14

    const/4 v15, 0x4

    const-string v12, "AUD_TAG_LONG_DESCRIPTION"

    invoke-direct {v0, v12, v15, v14}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_LONG_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v12, 0x6e

    invoke-static {v4, v12, v2, v10}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v12

    const/4 v14, 0x5

    const-string v15, "AUD_TAG_NARRATOR"

    invoke-direct {v0, v15, v14, v12}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_NARRATOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v12, 0x69

    .line 163
    invoke-static {v4, v9, v9, v12}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v15

    const-string v14, "AUD_TAG_PARENT_PRODUCT_ID"

    const/4 v11, 0x6

    invoke-direct {v0, v14, v11, v15}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v11, 0x45

    const/16 v14, 0x44

    const/16 v15, 0x43

    const/16 v8, 0x4b

    invoke-static {v15, v14, v11, v8}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v8

    const-string v6, "AUD_TAG_ASIN"

    const/4 v1, 0x7

    invoke-direct {v0, v6, v1, v8}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x47

    const/16 v6, 0x55

    const/16 v8, 0x49

    invoke-static {v1, v6, v8, v14}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v1

    const-string v6, "AUD_TAG_GUID"

    const/16 v8, 0x8

    invoke-direct {v0, v6, v8, v1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_GUID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x54

    invoke-static {v15, v14, v11, v1}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v1

    const-string v6, "AUD_TAG_CDET"

    const/16 v8, 0x9

    invoke-direct {v0, v6, v8, v1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_CDET:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x56

    const/16 v6, 0x52

    const/16 v8, 0x53

    .line 164
    invoke-static {v1, v11, v6, v8}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v1

    const-string v6, "AUD_TAG_VERS"

    const/16 v8, 0xa

    invoke-direct {v0, v6, v8, v1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_VERS:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x41

    const/16 v6, 0x52

    invoke-static {v1, v1, v15, v6}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v6

    const-string v8, "AUD_TAG_AACR"

    const/16 v11, 0xb

    invoke-direct {v0, v8, v11, v6}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AACR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v9, v3, v12}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v6

    const-string v8, "AUD_TAG_PARENT_TITLE"

    const/16 v11, 0xc

    invoke-direct {v0, v8, v11, v6}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v9, v12, v13}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v6

    const-string v8, "AUD_TAG_PRODUCT_ID"

    const/16 v11, 0xd

    invoke-direct {v0, v8, v11, v6}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 165
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v9, v10, v7}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v6

    const-string v7, "AUD_TAG_PROVIDER"

    const/16 v8, 0xe

    invoke-direct {v0, v7, v8, v6}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PROVIDER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v9, v13, v2}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v2

    const-string v6, "AUD_TAG_PUBLISH_DATE"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v2}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PUBLISH_DATE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v2, 0x73

    invoke-static {v4, v2, v13, v5}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const-string v6, "AUD_TAG_SHORT_DESCRIPTION"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 166
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v2, v3, v12}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const-string v6, "AUD_TAG_SHORT_TITLE"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v5, 0x62

    const/16 v6, 0x75

    invoke-static {v4, v2, v6, v5}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const-string v6, "AUD_TAG_SUBCATEGORY"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SUBCATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v3, v12, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const-string v6, "AUD_TAG_TITLE"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v5}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 167
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v4, v9, v2, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v2

    const-string v5, "AUD_TAG_PARENT_SHORT_TITLE"

    const/16 v6, 0x14

    invoke-direct {v0, v5, v6, v2}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v2, 0x6e

    const/16 v5, 0x75

    invoke-static {v4, v3, v2, v5}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v2

    const-string v3, "AUD_TAG_TRACK_NUMBER"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v2}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TRACK_NUMBER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v2, 0x50

    const/16 v3, 0x53

    const/16 v4, 0x4e

    invoke-static {v2, v1, v3, v4}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v1

    const-string v2, "AUD_TAG_PARENT_ASIN"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/sdk/AudibleSDK$MetadataTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v1, 0x17

    new-array v1, v1, [Lcom/audible/sdk/AudibleSDK$MetadataTag;

    .line 159
    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AUTHOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_CATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_COPYRIGHT:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_COVER_ART:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_LONG_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_NARRATOR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_ASIN:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_GUID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_CDET:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_VERS:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_AACR:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PRODUCT_ID:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PROVIDER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PUBLISH_DATE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_DESCRIPTION:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_SUBCATEGORY:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_PARENT_SHORT_TITLE:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$MetadataTag;->AUD_TAG_TRACK_NUMBER:Lcom/audible/sdk/AudibleSDK$MetadataTag;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/sdk/AudibleSDK$MetadataTag;->$VALUES:[Lcom/audible/sdk/AudibleSDK$MetadataTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$MetadataTag;
    .locals 1

    .line 159
    const-class v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$MetadataTag;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$MetadataTag;
    .locals 1

    .line 159
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->$VALUES:[Lcom/audible/sdk/AudibleSDK$MetadataTag;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$MetadataTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$MetadataTag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$MetadataTag;->val:I

    return v0
.end method
