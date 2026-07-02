.class public final enum Lcom/audible/sdk/AudibleSDK$ImageFormat;
.super Ljava/lang/Enum;
.source "AudibleSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/sdk/AudibleSDK$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/sdk/AudibleSDK$ImageFormat;

.field public static final enum AUD_IMAGE_JPEG:Lcom/audible/sdk/AudibleSDK$ImageFormat;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 412
    new-instance v0, Lcom/audible/sdk/AudibleSDK$ImageFormat;

    const/4 v1, 0x0

    const-string v2, "AUD_IMAGE_JPEG"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/sdk/AudibleSDK$ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/audible/sdk/AudibleSDK$ImageFormat;->AUD_IMAGE_JPEG:Lcom/audible/sdk/AudibleSDK$ImageFormat;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/sdk/AudibleSDK$ImageFormat;

    aput-object v0, v2, v1

    .line 410
    sput-object v2, Lcom/audible/sdk/AudibleSDK$ImageFormat;->$VALUES:[Lcom/audible/sdk/AudibleSDK$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 418
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$ImageFormat;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/sdk/AudibleSDK$ImageFormat;
    .locals 1

    .line 410
    const-class v0, Lcom/audible/sdk/AudibleSDK$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/sdk/AudibleSDK$ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/audible/sdk/AudibleSDK$ImageFormat;
    .locals 1

    .line 410
    sget-object v0, Lcom/audible/sdk/AudibleSDK$ImageFormat;->$VALUES:[Lcom/audible/sdk/AudibleSDK$ImageFormat;

    invoke-virtual {v0}, [Lcom/audible/sdk/AudibleSDK$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/sdk/AudibleSDK$ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$ImageFormat;->val:I

    return v0
.end method
