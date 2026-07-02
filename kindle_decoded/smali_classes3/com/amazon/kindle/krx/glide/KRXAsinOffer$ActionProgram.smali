.class public final enum Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
.super Ljava/lang/Enum;
.source "KRXAsinOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionProgram"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field public static final enum COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field public static final enum KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field public static final enum NO_PROGRAM:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field public static final enum PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;


# instance fields
.field private final channel:Ljava/lang/String;

.field private final program:Ljava/lang/String;

.field private final programCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 333
    new-instance v6, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const-string v1, "KINDLE_UNLIMITED"

    const/4 v2, 0x0

    const-string v3, "KINDLE_UNLIMITED"

    const-string v4, "KU"

    const-string v5, "ALL_YOU_CAN_READ"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 334
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const-string v8, "PRIME_READING"

    const/4 v9, 0x1

    const-string v10, "PRIME"

    const-string v11, "PRR"

    const-string v12, "PRIME_READING"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 335
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const-string v2, "COMICS_UNLIMITED"

    const/4 v3, 0x2

    const-string v4, "COMICS_UNLIMITED"

    const-string v5, "CU"

    const-string v6, "ALL_YOU_CAN_READ"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 336
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const-string v8, "NO_PROGRAM"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->NO_PROGRAM:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 337
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    .line 331
    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->NO_PROGRAM:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->$VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput-object p3, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->programCode:Ljava/lang/String;

    .line 345
    iput-object p4, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->program:Ljava/lang/String;

    .line 346
    iput-object p5, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->channel:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 1

    .line 331
    const-class v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;
    .locals 1

    .line 331
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->$VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    return-object v0
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->program:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramCode()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->programCode:Ljava/lang/String;

    return-object v0
.end method
