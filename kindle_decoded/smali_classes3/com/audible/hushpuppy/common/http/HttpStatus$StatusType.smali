.class public final enum Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;
.super Ljava/lang/Enum;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/http/HttpStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

.field public static final enum CLIENTERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

.field public static final enum SERVERERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

.field public static final enum SUCCESS:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

.field public static final enum UNKNOWN:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 120
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SUCCESS:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    .line 124
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    const/4 v2, 0x1

    const-string v3, "CLIENTERROR"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->CLIENTERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    .line 128
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    const/4 v3, 0x2

    const-string v4, "SERVERERROR"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SERVERERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    .line 132
    new-instance v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->UNKNOWN:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    .line 116
    sget-object v6, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SUCCESS:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->CLIENTERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SERVERERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->$VALUES:[Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;
    .locals 1

    .line 116
    const-class v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;
    .locals 1

    .line 116
    sget-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->$VALUES:[Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object v0
.end method
