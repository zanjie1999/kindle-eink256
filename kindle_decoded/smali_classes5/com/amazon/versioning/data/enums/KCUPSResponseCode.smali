.class public final enum Lcom/amazon/versioning/data/enums/KCUPSResponseCode;
.super Ljava/lang/Enum;
.source "KCUPSResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/versioning/data/enums/KCUPSResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field public static final enum ACCEPTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field public static final enum BAD_REQUEST:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field public static final enum NOT_IMPLEMENTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field public static final enum OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

.field private static RESPONSE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/versioning/data/enums/KCUPSResponseCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNKNOWN_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v1, 0x0

    const-string v2, "NOT_IMPLEMENTED"

    const/16 v3, 0x1f5

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->NOT_IMPLEMENTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 16
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v2, 0x1

    const-string v3, "BAD_REQUEST"

    const/16 v4, 0x190

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->BAD_REQUEST:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 17
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v3, 0x2

    const-string v4, "INTERNAL_SERVER_ERROR"

    const/16 v5, 0x1f4

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->INTERNAL_SERVER_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 18
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v4, 0x3

    const-string v5, "ACCEPTED"

    const/16 v6, 0xca

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->ACCEPTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 19
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v5, 0x4

    const-string v6, "OK"

    const/16 v7, 0xc8

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 20
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v6, 0x5

    const-string v7, "UNKNOWN_ERROR"

    const/4 v8, -0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->UNKNOWN_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 14
    sget-object v8, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->NOT_IMPLEMENTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->BAD_REQUEST:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->INTERNAL_SERVER_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->ACCEPTED:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->$VALUES:[Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    .line 23
    new-instance v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode$1;

    invoke-direct {v0}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode$1;-><init>()V

    sput-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->RESPONSE_CODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->code:I

    return-void
.end method

.method public static getResponseCodeFromNumber(I)Lcom/amazon/versioning/data/enums/KCUPSResponseCode;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->RESPONSE_CODE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    if-eqz p0, :cond_0

    return-object p0

    .line 45
    :cond_0
    sget-object p0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->UNKNOWN_ERROR:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/versioning/data/enums/KCUPSResponseCode;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/versioning/data/enums/KCUPSResponseCode;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->$VALUES:[Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    invoke-virtual {v0}, [Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->code:I

    return v0
.end method
