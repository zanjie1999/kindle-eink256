.class public final enum Lcom/audible/sdk/AudibleSDK$AudioEncoding;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$AudioEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field public static final enum AUD_ENCODING_AAC_LC:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field public static final enum AUD_ENCODING_ACELP:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field public static final enum AUD_ENCODING_HE_AAC:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field public static final enum AUD_ENCODING_MP3:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field public static final enum AUD_ENCODING_UNKNOWN:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/audible/sdk/AudibleSDK$AudioEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 107
    new-instance v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v1, 0x0

    const-string v2, "AUD_ENCODING_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_UNKNOWN:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 111
    new-instance v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v2, 0x1

    const-string v3, "AUD_ENCODING_ACELP"

    invoke-direct {v0, v3, v2, v2}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_ACELP:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 115
    new-instance v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v3, 0x2

    const-string v4, "AUD_ENCODING_MP3"

    invoke-direct {v0, v4, v3, v3}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_MP3:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 119
    new-instance v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v4, 0x3

    const-string v5, "AUD_ENCODING_AAC_LC"

    invoke-direct {v0, v5, v4, v4}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_AAC_LC:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 123
    new-instance v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v5, 0x4

    const-string v6, "AUD_ENCODING_HE_AAC"

    invoke-direct {v0, v6, v5, v5}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_HE_AAC:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 102
    sget-object v7, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_UNKNOWN:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    aput-object v7, v6, v1

    sget-object v7, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_ACELP:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    aput-object v7, v6, v2

    sget-object v2, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_MP3:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    aput-object v2, v6, v3

    sget-object v2, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->AUD_ENCODING_AAC_LC:Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    aput-object v2, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->$VALUES:[Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->INSTANCES:Landroid/util/SparseArray;

    .line 130
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->values()[Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 131
    sget-object v4, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->getValue()I

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

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 142
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->val:I

    return-void
.end method

.method protected static getInstance(I)Lcom/audible/sdk/AudibleSDK$AudioEncoding;
    .locals 1

    .line 137
    sget-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$AudioEncoding;
    .locals 1

    .line 102
    const-class v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$AudioEncoding;
    .locals 1

    .line 102
    sget-object v0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->$VALUES:[Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$AudioEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$AudioEncoding;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$AudioEncoding;->val:I

    return v0
.end method
