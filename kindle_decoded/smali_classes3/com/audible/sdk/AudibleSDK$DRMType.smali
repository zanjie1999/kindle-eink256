.class public final enum Lcom/audible/sdk/AudibleSDK$DRMType;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DRMType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$DRMType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$DRMType;

.field public static final enum DRM_TYPE_APPLE_FAIRPLAY:Lcom/audible/sdk/AudibleSDK$DRMType;

.field public static final enum DRM_TYPE_AUDIBLE:Lcom/audible/sdk/AudibleSDK$DRMType;

.field public static final enum DRM_TYPE_UNPROTECTED:Lcom/audible/sdk/AudibleSDK$DRMType;

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/audible/sdk/AudibleSDK$DRMType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 369
    new-instance v0, Lcom/audible/sdk/AudibleSDK$DRMType;

    const/4 v1, 0x0

    const-string v2, "DRM_TYPE_UNPROTECTED"

    invoke-direct {v0, v2, v1, v1}, Lcom/audible/sdk/AudibleSDK$DRMType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_UNPROTECTED:Lcom/audible/sdk/AudibleSDK$DRMType;

    .line 373
    new-instance v0, Lcom/audible/sdk/AudibleSDK$DRMType;

    const/4 v2, 0x1

    const-string v3, "DRM_TYPE_APPLE_FAIRPLAY"

    invoke-direct {v0, v3, v2, v2}, Lcom/audible/sdk/AudibleSDK$DRMType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_APPLE_FAIRPLAY:Lcom/audible/sdk/AudibleSDK$DRMType;

    .line 377
    new-instance v0, Lcom/audible/sdk/AudibleSDK$DRMType;

    const/4 v3, 0x2

    const-string v4, "DRM_TYPE_AUDIBLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/audible/sdk/AudibleSDK$DRMType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_AUDIBLE:Lcom/audible/sdk/AudibleSDK$DRMType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/sdk/AudibleSDK$DRMType;

    .line 364
    sget-object v5, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_UNPROTECTED:Lcom/audible/sdk/AudibleSDK$DRMType;

    aput-object v5, v4, v1

    sget-object v5, Lcom/audible/sdk/AudibleSDK$DRMType;->DRM_TYPE_APPLE_FAIRPLAY:Lcom/audible/sdk/AudibleSDK$DRMType;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/sdk/AudibleSDK$DRMType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$DRMType;

    .line 381
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->INSTANCES:Landroid/util/SparseArray;

    .line 384
    invoke-static {}, Lcom/audible/sdk/AudibleSDK$DRMType;->values()[Lcom/audible/sdk/AudibleSDK$DRMType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 385
    sget-object v4, Lcom/audible/sdk/AudibleSDK$DRMType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/audible/sdk/AudibleSDK$DRMType;->getValue()I

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

    .line 395
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 396
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$DRMType;->val:I

    return-void
.end method

.method protected static getInstance(I)Lcom/audible/sdk/AudibleSDK$DRMType;
    .locals 1

    .line 391
    sget-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$DRMType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$DRMType;
    .locals 1

    .line 364
    const-class v0, Lcom/audible/sdk/AudibleSDK$DRMType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$DRMType;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$DRMType;
    .locals 1

    .line 364
    sget-object v0, Lcom/audible/sdk/AudibleSDK$DRMType;->$VALUES:[Lcom/audible/sdk/AudibleSDK$DRMType;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$DRMType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$DRMType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$DRMType;->val:I

    return v0
.end method
