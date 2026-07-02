.class public final enum Lcom/amazon/kindle/krx/glide/AcquireOfferError;
.super Ljava/lang/Enum;
.source "AcquireOfferError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/glide/AcquireOfferError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field public static final enum PROGRAM_VIOLATION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field public static final enum SERVER_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field public static final enum TECH_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/glide/AcquireOfferError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v1, 0x0

    const-string v2, "TECH_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/glide/AcquireOfferError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->TECH_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v2, 0x1

    const-string v3, "PROGRAM_VIOLATION_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/glide/AcquireOfferError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v3, 0x2

    const-string v4, "CONNECTION_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/glide/AcquireOfferError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v4, 0x3

    const-string v5, "SERVER_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/glide/AcquireOfferError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->SERVER_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/glide/AcquireOfferError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->UNKNOWN:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    .line 8
    sget-object v7, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->TECH_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->SERVER_ERROR:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->$VALUES:[Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/AcquireOfferError;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/glide/AcquireOfferError;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/krx/glide/AcquireOfferError;->$VALUES:[Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/glide/AcquireOfferError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    return-object v0
.end method
