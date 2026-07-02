.class public final enum Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;
.super Ljava/lang/Enum;
.source "KRIFUIEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFUIEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

.field public static final enum PEN:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

.field public static final enum TOUCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    const/4 v1, 0x0

    const-string v2, "PEN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->PEN:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    .line 31
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    const/4 v2, 0x1

    const-string v3, "TOUCH"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->TOUCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    .line 29
    sget-object v4, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->PEN:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    return-object v0
.end method
