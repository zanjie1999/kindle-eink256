.class public final enum Lcom/amazon/kedu/ftue/assets/resources/ResourceType;
.super Ljava/lang/Enum;
.source "ResourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/ftue/assets/resources/ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

.field public static final enum DRAWABLE:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    const/4 v1, 0x0

    const-string v2, "DRAWABLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->DRAWABLE:Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    aput-object v0, v2, v1

    .line 6
    sput-object v2, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->$VALUES:[Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

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

.method public static getType(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/resources/ResourceType;
    .locals 1

    const-string v0, "-"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 28
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/resources/ResourceType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/ftue/assets/resources/ResourceType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->$VALUES:[Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    invoke-virtual {v0}, [Lcom/amazon/kedu/ftue/assets/resources/ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/ftue/assets/resources/ResourceType;

    return-object v0
.end method
