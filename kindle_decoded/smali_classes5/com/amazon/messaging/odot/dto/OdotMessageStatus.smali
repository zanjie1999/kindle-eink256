.class public final enum Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
.super Ljava/lang/Enum;
.source "OdotMessageStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/messaging/odot/dto/OdotMessageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field public static final enum NOT_PROCESSED:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field public static final enum RETRYABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field public static final enum SUCCESS:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field public static final enum UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

.field private static final lookUp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/messaging/odot/dto/OdotMessageStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_PROCESSED"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->NOT_PROCESSED:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 14
    new-instance v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    const/4 v2, 0x1

    const-string v3, "RETRYABLE_ERROR"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->RETRYABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 15
    new-instance v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    const/4 v3, 0x2

    const-string v4, "UNRECOVERABLE_ERROR"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 16
    new-instance v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    const/4 v4, 0x3

    const-string v5, "SUCCESS"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->SUCCESS:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 12
    sget-object v6, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->NOT_PROCESSED:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->RETRYABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->$VALUES:[Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->lookUp:Ljava/util/Map;

    .line 21
    const-class v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 22
    sget-object v2, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->lookUp:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->code:I

    return-void
.end method

.method public static get(I)Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->lookUp:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/messaging/odot/dto/OdotMessageStatus;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->$VALUES:[Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v0}, [Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->code:I

    return v0
.end method
