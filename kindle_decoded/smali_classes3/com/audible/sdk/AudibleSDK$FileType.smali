.class public final enum Lcom/audible/sdk/AudibleSDK$FileType;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_FORMAT2:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_FORMAT3:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_AUDIBLE_OBSOLETE:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_MPEG4_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

.field public static final enum FILE_TYPE_UNIDENTIFIED:Lcom/audible/sdk/AudibleSDK$FileType;

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/audible/sdk/AudibleSDK$FileType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 296
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v1, 0x0

    const-string v2, "FILE_TYPE_UNIDENTIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_UNIDENTIFIED:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 300
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v2, 0x1

    const-string v3, "FILE_TYPE_MPEG4_AUDIO"

    invoke-direct {v0, v3, v2, v2}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 304
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v3, 0x2

    const-string v4, "FILE_TYPE_MPEG4_AUDIOBOOK"

    invoke-direct {v0, v4, v3, v3}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MPEG4_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 308
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v4, 0x3

    const-string v5, "FILE_TYPE_AUDIBLE_AUDIOBOOK"

    invoke-direct {v0, v5, v4, v4}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 312
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v5, 0x4

    const-string v6, "FILE_TYPE_AUDIBLE_FORMAT4"

    invoke-direct {v0, v6, v5, v5}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 316
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v6, 0x5

    const-string v7, "FILE_TYPE_AUDIBLE_FORMAT3"

    invoke-direct {v0, v7, v6, v6}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT3:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 320
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v7, 0x6

    const-string v8, "FILE_TYPE_AUDIBLE_FORMAT2"

    invoke-direct {v0, v8, v7, v7}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT2:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 324
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/4 v8, 0x7

    const-string v9, "FILE_TYPE_AUDIBLE_OBSOLETE"

    invoke-direct {v0, v9, v8, v8}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_OBSOLETE:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 326
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/16 v9, 0x8

    const-string v10, "FILE_TYPE_MP3_AUDIO"

    invoke-direct {v0, v10, v9, v9}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

    .line 331
    new-instance v0, Lcom/audible/sdk/AudibleSDK$FileType;

    const/16 v10, 0x9

    const-string v11, "FILE_TYPE_AUDIBLE_CDN"

    const/16 v12, 0x10

    invoke-direct {v0, v11, v10, v12}, Lcom/audible/sdk/AudibleSDK$FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_CDN:Lcom/audible/sdk/AudibleSDK$FileType;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/sdk/AudibleSDK$FileType;

    .line 291
    sget-object v12, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_UNIDENTIFIED:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v12, v11, v1

    sget-object v12, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MPEG4_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v12, v11, v2

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MPEG4_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_AUDIOBOOK:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v4

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT4:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v5

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT3:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v6

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_FORMAT2:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v7

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_AUDIBLE_OBSOLETE:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v8

    sget-object v2, Lcom/audible/sdk/AudibleSDK$FileType;->FILE_TYPE_MP3_AUDIO:Lcom/audible/sdk/AudibleSDK$FileType;

    aput-object v2, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/sdk/AudibleSDK$FileType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$FileType;

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->INSTANCES:Landroid/util/SparseArray;

    .line 338
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$FileType;->values()[Lcom/audible/sdk/AudibleSDK$FileType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 339
    sget-object v4, Lcom/audible/sdk/AudibleSDK$FileType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK$FileType;->getValue()I

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

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 350
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$FileType;->val:I

    return-void
.end method

.method protected static getInstance(I)Lcom/audible/sdk/AudibleSDK$FileType;
    .locals 1

    .line 345
    sget-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$FileType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$FileType;
    .locals 1

    .line 291
    const-class v0, Lcom/audible/sdk/AudibleSDK$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$FileType;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$FileType;
    .locals 1

    .line 291
    sget-object v0, Lcom/audible/sdk/AudibleSDK$FileType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$FileType;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$FileType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FileType;->val:I

    return v0
.end method
