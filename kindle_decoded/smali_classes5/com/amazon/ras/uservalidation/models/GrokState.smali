.class public final enum Lcom/amazon/ras/uservalidation/models/GrokState;
.super Ljava/lang/Enum;
.source "GrokState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ras/uservalidation/models/GrokState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ras/uservalidation/models/GrokState;

.field public static final enum BLOCKED:Lcom/amazon/ras/uservalidation/models/GrokState;

.field public static final enum SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

.field public static final enum UNSUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/amazon/ras/uservalidation/models/GrokState;

    const/4 v1, 0x0

    const-string v2, "SUPPORTED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ras/uservalidation/models/GrokState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    .line 8
    new-instance v0, Lcom/amazon/ras/uservalidation/models/GrokState;

    const/4 v2, 0x1

    const-string v3, "UNSUPPORTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ras/uservalidation/models/GrokState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->UNSUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    .line 10
    new-instance v0, Lcom/amazon/ras/uservalidation/models/GrokState;

    const/4 v3, 0x2

    const-string v4, "BLOCKED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ras/uservalidation/models/GrokState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->BLOCKED:Lcom/amazon/ras/uservalidation/models/GrokState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ras/uservalidation/models/GrokState;

    .line 4
    sget-object v5, Lcom/amazon/ras/uservalidation/models/GrokState;->SUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ras/uservalidation/models/GrokState;->UNSUPPORTED:Lcom/amazon/ras/uservalidation/models/GrokState;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ras/uservalidation/models/GrokState;->$VALUES:[Lcom/amazon/ras/uservalidation/models/GrokState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ras/uservalidation/models/GrokState;
    .locals 1

    .line 4
    const-class v0, Lcom/amazon/ras/uservalidation/models/GrokState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ras/uservalidation/models/GrokState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ras/uservalidation/models/GrokState;
    .locals 1

    .line 4
    sget-object v0, Lcom/amazon/ras/uservalidation/models/GrokState;->$VALUES:[Lcom/amazon/ras/uservalidation/models/GrokState;

    invoke-virtual {v0}, [Lcom/amazon/ras/uservalidation/models/GrokState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ras/uservalidation/models/GrokState;

    return-object v0
.end method
