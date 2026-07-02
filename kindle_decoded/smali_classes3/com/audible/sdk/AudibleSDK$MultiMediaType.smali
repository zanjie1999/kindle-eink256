.class public final enum Lcom/audible/sdk/AudibleSDK$MultiMediaType;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiMediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$MultiMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_AAC_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_JPEG_IMAGE:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_LINK_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_TEXT_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field public static final enum AUD_UNKNOWN_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/audible/sdk/AudibleSDK$MultiMediaType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 60
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/4 v1, 0x0

    const-string v2, "AUD_UNKNOWN_DATA"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_UNKNOWN_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 61
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/16 v2, 0x6d

    const/16 v3, 0x61

    const/16 v4, 0x70

    const/16 v5, 0x34

    invoke-static {v2, v4, v5, v3}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "AUD_MPEG4_AUDIO"

    invoke-direct {v0, v7, v6, v5}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 62
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/16 v5, 0x76

    const/16 v7, 0x64

    invoke-static {v3, v3, v5, v7}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v3

    const/4 v5, 0x2

    const-string v7, "AUD_AAC_AUDIO"

    invoke-direct {v0, v7, v5, v3}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_AAC_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 63
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/16 v3, 0x33

    const/16 v7, 0x20

    invoke-static {v2, v4, v3, v7}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v2

    const/4 v7, 0x3

    const-string v8, "AUD_MP3_AUDIO"

    invoke-direct {v0, v8, v7, v2}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 64
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/16 v2, 0x67

    const/16 v8, 0x65

    const/16 v9, 0x6a

    invoke-static {v9, v4, v8, v2}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v4

    const/4 v9, 0x4

    const-string v10, "AUD_JPEG_IMAGE"

    invoke-direct {v0, v10, v9, v4}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_JPEG_IMAGE:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 65
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/16 v4, 0x78

    const/16 v10, 0x74

    invoke-static {v10, v8, v4, v10}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v8

    const/4 v11, 0x5

    const-string v12, "AUD_TEXT_DATA"

    invoke-direct {v0, v12, v11, v8}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_TEXT_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 66
    new-instance v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    invoke-static {v10, v4, v3, v2}, Lcom/audible/sdk/AudibleSDKUtils;->TAG(IIII)I

    move-result v2

    const/4 v3, 0x6

    const-string v4, "AUD_LINK_DATA"

    invoke-direct {v0, v4, v3, v2}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_LINK_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 58
    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_UNKNOWN_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v1

    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v6

    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_AAC_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v5

    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v7

    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_JPEG_IMAGE:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v9

    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->AUD_TEXT_DATA:Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    aput-object v4, v2, v11

    aput-object v0, v2, v3

    sput-object v2, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->INSTANCES:Landroid/util/SparseArray;

    .line 73
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->values()[Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 74
    sget-object v4, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->val:I

    return-void
.end method

.method protected static getInstance(I)Lcom/audible/sdk/AudibleSDK$MultiMediaType;
    .locals 1

    .line 80
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$MultiMediaType;
    .locals 1

    .line 58
    const-class v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$MultiMediaType;
    .locals 1

    .line 58
    sget-object v0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$MultiMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$MultiMediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$MultiMediaType;->val:I

    return v0
.end method
