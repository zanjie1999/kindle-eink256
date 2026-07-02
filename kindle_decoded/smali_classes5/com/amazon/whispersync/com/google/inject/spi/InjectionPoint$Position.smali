.class final enum Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;
.super Ljava/lang/Enum;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

.field public static final enum BOTTOM:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

.field public static final enum MIDDLE:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

.field public static final enum TOP:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 509
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    const/4 v1, 0x0

    const-string v2, "TOP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    .line 510
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    const/4 v2, 0x1

    const-string v3, "MIDDLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    .line 511
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    const/4 v3, 0x2

    const-string v4, "BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->BOTTOM:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    .line 508
    sget-object v5, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->TOP:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->MIDDLE:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;
    .locals 1

    .line 508
    const-class v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;
    .locals 1

    .line 508
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint$Position;

    return-object v0
.end method
