.class public final enum Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
.super Ljava/lang/Enum;
.source "ICoverImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cover/ICoverImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CoverType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cover/ICoverImageService$CoverType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

.field public static final enum EMBEDDED:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

.field public static final enum NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

.field public static final enum TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

.field public static final enum WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;


# instance fields
.field private prefix:Ljava/lang/String;

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v1, 0x0

    const-string v2, "WEBSERVICE"

    const-string v3, ""

    const/16 v4, 0x12c

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    .line 24
    new-instance v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v2, 0x1

    const-string v3, "EMBEDDED"

    const-string v4, "e_"

    const/16 v5, 0xc8

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->EMBEDDED:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    .line 25
    new-instance v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v3, 0x2

    const-string v4, "TEMPORARY"

    const-string v5, "d_"

    const/16 v6, 0x64

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    const-string v6, "n_"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    .line 21
    sget-object v6, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->WEBSERVICE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->EMBEDDED:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->TEMPORARY:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->$VALUES:[Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->prefix:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->$VALUES:[Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    return-object v0
.end method


# virtual methods
.method getPriority()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->priority:I

    return v0
.end method
