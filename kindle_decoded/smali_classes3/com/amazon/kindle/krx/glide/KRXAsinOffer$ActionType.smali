.class public final enum Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
.super Ljava/lang/Enum;
.source "KRXAsinOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field public static final enum BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field public static final enum BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field public static final enum GIFT:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 322
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v1, 0x0

    const-string v2, "BORROW"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 323
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v2, 0x1

    const-string v3, "BUY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 324
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v3, 0x2

    const-string v4, "GIFT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->GIFT:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 325
    new-instance v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->UNKNOWN:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    .line 320
    sget-object v6, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BUY:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->GIFT:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->$VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 1

    .line 320
    const-class v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;
    .locals 1

    .line 320
    sget-object v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->$VALUES:[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    return-object v0
.end method
