.class public final enum Lcom/amazon/kindle/krx/tutorial/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/tutorial/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/tutorial/Orientation;

.field public static final enum BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

.field public static final enum LEFT:Lcom/amazon/kindle/krx/tutorial/Orientation;

.field public static final enum RIGHT:Lcom/amazon/kindle/krx/tutorial/Orientation;

.field public static final enum TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->LEFT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/tutorial/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->RIGHT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    .line 19
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    const/4 v3, 0x2

    const-string v4, "TOP"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/tutorial/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    const/4 v4, 0x3

    const-string v5, "BOTTOM"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/tutorial/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/tutorial/Orientation;

    .line 10
    sget-object v6, Lcom/amazon/kindle/krx/tutorial/Orientation;->LEFT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->RIGHT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/tutorial/Orientation;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getOrientation(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    const-string v0, "left"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/amazon/kindle/krx/tutorial/Orientation;->LEFT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object p0

    :cond_0
    const-string v0, "right"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget-object p0, Lcom/amazon/kindle/krx/tutorial/Orientation;->RIGHT:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object p0

    :cond_1
    const-string v0, "top"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 41
    sget-object p0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->$VALUES:[Lcom/amazon/kindle/krx/tutorial/Orientation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/tutorial/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method
