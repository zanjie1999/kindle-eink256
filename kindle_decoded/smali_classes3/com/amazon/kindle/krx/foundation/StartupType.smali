.class public final enum Lcom/amazon/kindle/krx/foundation/StartupType;
.super Ljava/lang/Enum;
.source "StartupEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/foundation/StartupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/foundation/StartupType;

.field public static final enum APP_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

.field public static final enum BOOK_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

.field public static final enum TIME_OUT:Lcom/amazon/kindle/krx/foundation/StartupType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/krx/foundation/StartupType;

    new-instance v1, Lcom/amazon/kindle/krx/foundation/StartupType;

    const/4 v2, 0x0

    const-string v3, "APP_COLD_OPEN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/foundation/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/foundation/StartupType;->APP_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/foundation/StartupType;

    const/4 v2, 0x1

    const-string v3, "BOOK_COLD_OPEN"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/foundation/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/foundation/StartupType;->BOOK_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/foundation/StartupType;

    const/4 v2, 0x2

    const-string v3, "TIME_OUT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/krx/foundation/StartupType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/krx/foundation/StartupType;->TIME_OUT:Lcom/amazon/kindle/krx/foundation/StartupType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/foundation/StartupType;->$VALUES:[Lcom/amazon/kindle/krx/foundation/StartupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/foundation/StartupType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/foundation/StartupType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/foundation/StartupType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/foundation/StartupType;->$VALUES:[Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/foundation/StartupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/foundation/StartupType;

    return-object v0
.end method
