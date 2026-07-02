.class public final enum Lcom/amazon/kindle/collections/dto/ThumbnailType;
.super Ljava/lang/Enum;
.source "ThumbnailType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/dto/ThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/dto/ThumbnailType;

.field public static final enum ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

.field public static final enum NUMBERED:Lcom/amazon/kindle/collections/dto/ThumbnailType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const/4 v1, 0x0

    const-string v2, "ITEM_COVERS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/collections/dto/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    .line 11
    new-instance v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const/4 v2, 0x1

    const-string v3, "NUMBERED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/collections/dto/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->NUMBERED:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/collections/dto/ThumbnailType;

    .line 9
    sget-object v4, Lcom/amazon/kindle/collections/dto/ThumbnailType;->ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/collections/dto/ThumbnailType;->$VALUES:[Lcom/amazon/kindle/collections/dto/ThumbnailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ThumbnailType;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/dto/ThumbnailType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/dto/ThumbnailType;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->$VALUES:[Lcom/amazon/kindle/collections/dto/ThumbnailType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/dto/ThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/dto/ThumbnailType;

    return-object v0
.end method
