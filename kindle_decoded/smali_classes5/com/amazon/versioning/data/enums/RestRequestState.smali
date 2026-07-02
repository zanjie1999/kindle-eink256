.class public final enum Lcom/amazon/versioning/data/enums/RestRequestState;
.super Ljava/lang/Enum;
.source "RestRequestState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/versioning/data/enums/RestRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/versioning/data/enums/RestRequestState;

.field public static final enum CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

.field public static final enum CACHED_SUCCESS:Lcom/amazon/versioning/data/enums/RestRequestState;

.field public static final enum IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

.field public static final enum OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v1, 0x0

    const-string v2, "CACHED_SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/versioning/data/enums/RestRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_SUCCESS:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 12
    new-instance v0, Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v2, 0x1

    const-string v3, "CACHED_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/versioning/data/enums/RestRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 13
    new-instance v0, Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v3, 0x2

    const-string v4, "IDLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/versioning/data/enums/RestRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 14
    new-instance v0, Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v4, 0x3

    const-string v5, "OUTGOING_REQUEST"

    invoke-direct {v0, v5, v4}, Lcom/amazon/versioning/data/enums/RestRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 10
    sget-object v6, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_SUCCESS:Lcom/amazon/versioning/data/enums/RestRequestState;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/versioning/data/enums/RestRequestState;->$VALUES:[Lcom/amazon/versioning/data/enums/RestRequestState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/versioning/data/enums/RestRequestState;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/versioning/data/enums/RestRequestState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/versioning/data/enums/RestRequestState;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->$VALUES:[Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0}, [Lcom/amazon/versioning/data/enums/RestRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/versioning/data/enums/RestRequestState;

    return-object v0
.end method
