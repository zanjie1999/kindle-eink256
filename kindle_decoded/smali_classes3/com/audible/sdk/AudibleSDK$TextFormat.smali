.class public final enum Lcom/audible/sdk/AudibleSDK$TextFormat;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$TextFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$TextFormat;

.field public static final enum AUD_TEXT_ASCII:Lcom/audible/sdk/AudibleSDK$TextFormat;

.field public static final enum AUD_TEXT_UCS2:Lcom/audible/sdk/AudibleSDK$TextFormat;

.field public static final enum AUD_TEXT_UTF16:Lcom/audible/sdk/AudibleSDK$TextFormat;

.field public static final enum AUD_TEXT_UTF8:Lcom/audible/sdk/AudibleSDK$TextFormat;

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/audible/sdk/AudibleSDK$TextFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 230
    new-instance v0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    const/4 v1, 0x0

    const-string v2, "AUD_TEXT_ASCII"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_ASCII:Lcom/audible/sdk/AudibleSDK$TextFormat;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    const/4 v2, 0x1

    const-string v3, "AUD_TEXT_UTF8"

    invoke-direct {v0, v3, v2, v2}, Lcom/audible/sdk/AudibleSDK$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_UTF8:Lcom/audible/sdk/AudibleSDK$TextFormat;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    const/4 v3, 0x2

    const-string v4, "AUD_TEXT_UCS2"

    invoke-direct {v0, v4, v3, v3}, Lcom/audible/sdk/AudibleSDK$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_UCS2:Lcom/audible/sdk/AudibleSDK$TextFormat;

    new-instance v0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    const/4 v4, 0x3

    const-string v5, "AUD_TEXT_UTF16"

    invoke-direct {v0, v5, v4, v4}, Lcom/audible/sdk/AudibleSDK$TextFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_UTF16:Lcom/audible/sdk/AudibleSDK$TextFormat;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/sdk/AudibleSDK$TextFormat;

    .line 228
    sget-object v6, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_ASCII:Lcom/audible/sdk/AudibleSDK$TextFormat;

    aput-object v6, v5, v1

    sget-object v6, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_UTF8:Lcom/audible/sdk/AudibleSDK$TextFormat;

    aput-object v6, v5, v2

    sget-object v2, Lcom/audible/sdk/AudibleSDK$TextFormat;->AUD_TEXT_UCS2:Lcom/audible/sdk/AudibleSDK$TextFormat;

    aput-object v2, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/sdk/AudibleSDK$TextFormat;->$VALUES:[Lcom/audible/sdk/AudibleSDK$TextFormat;

    .line 234
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->INSTANCES:Landroid/util/SparseArray;

    .line 237
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$TextFormat;->values()[Lcom/audible/sdk/AudibleSDK$TextFormat;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 238
    sget-object v4, Lcom/audible/sdk/AudibleSDK$TextFormat;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK$TextFormat;->getValue()I

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

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$TextFormat;->val:I

    return-void
.end method

.method protected static getInstance(I)Lcom/audible/sdk/AudibleSDK$TextFormat;
    .locals 1

    .line 244
    sget-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$TextFormat;
    .locals 1

    .line 228
    const-class v0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$TextFormat;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$TextFormat;
    .locals 1

    .line 228
    sget-object v0, Lcom/audible/sdk/AudibleSDK$TextFormat;->$VALUES:[Lcom/audible/sdk/AudibleSDK$TextFormat;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$TextFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$TextFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TextFormat;->val:I

    return v0
.end method
