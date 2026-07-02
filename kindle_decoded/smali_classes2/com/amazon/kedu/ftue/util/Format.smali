.class public final enum Lcom/amazon/kedu/ftue/util/Format;
.super Ljava/lang/Enum;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/ftue/util/Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/ftue/util/Format;

.field public static final enum FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

.field public static final enum OTHER:Lcom/amazon/kedu/ftue/util/Format;

.field public static final enum REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/kedu/ftue/util/Format;

    const/4 v1, 0x0

    const-string v2, "FIXED_FORMAT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/ftue/util/Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    .line 9
    new-instance v0, Lcom/amazon/kedu/ftue/util/Format;

    const/4 v2, 0x1

    const-string v3, "REFLOWABLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kedu/ftue/util/Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/util/Format;->REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;

    .line 10
    new-instance v0, Lcom/amazon/kedu/ftue/util/Format;

    const/4 v3, 0x2

    const-string v4, "OTHER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kedu/ftue/util/Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/util/Format;->OTHER:Lcom/amazon/kedu/ftue/util/Format;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kedu/ftue/util/Format;

    .line 6
    sget-object v5, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kedu/ftue/util/Format;->REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kedu/ftue/util/Format;->$VALUES:[Lcom/amazon/kedu/ftue/util/Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/util/Format;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kedu/ftue/util/Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/ftue/util/Format;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/ftue/util/Format;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kedu/ftue/util/Format;->$VALUES:[Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {v0}, [Lcom/amazon/kedu/ftue/util/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/ftue/util/Format;

    return-object v0
.end method
