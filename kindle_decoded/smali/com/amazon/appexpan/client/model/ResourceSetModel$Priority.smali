.class public final enum Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
.super Ljava/lang/Enum;
.source "ResourceSetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/model/ResourceSetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

.field public static final enum DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

.field public static final enum HIGH:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    const/4 v1, 0x0

    const-string v2, "HIGH"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->HIGH:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    .line 73
    new-instance v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    const/4 v2, 0x1

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    .line 70
    sget-object v4, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->HIGH:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->$VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->value:I

    return-void
.end method

.method public static getPriority(I)Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
    .locals 5

    .line 94
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->values()[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 96
    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    sget-object p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object p0
.end method

.method public static getPriority(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
    .locals 5

    .line 112
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->values()[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 114
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    sget-object p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->DEFAULT:Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
    .locals 1

    .line 70
    const-class v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object p0
.end method

.method public static values()[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->$VALUES:[Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    invoke-virtual {v0}, [Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->value:I

    return v0
.end method
