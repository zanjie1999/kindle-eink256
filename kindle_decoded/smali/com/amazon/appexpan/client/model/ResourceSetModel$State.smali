.class public final enum Lcom/amazon/appexpan/client/model/ResourceSetModel$State;
.super Ljava/lang/Enum;
.source "ResourceSetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/appexpan/client/model/ResourceSetModel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field public static final enum EXPIRED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field public static final enum FAILED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field public static final enum LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field public static final enum NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

.field public static final enum REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v1, 0x0

    const-string v2, "REMOTE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 47
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v2, 0x1

    const-string v3, "LOCAL"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 48
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v3, 0x2

    const-string v4, "EXPIRED"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->EXPIRED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 50
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v4, 0x3

    const-string v5, "NOT_REQUESTED"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 52
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v5, 0x4

    const-string v6, "FAILED"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    .line 43
    sget-object v7, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->EXPIRED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->NOT_REQUESTED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->$VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$State;
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/appexpan/client/model/ResourceSetModel$State;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->$VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    invoke-virtual {v0}, [Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->value:I

    return v0
.end method
