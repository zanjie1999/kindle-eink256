.class public final enum Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
.super Ljava/lang/Enum;
.source "DynamicResourceOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field public static final enum ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field public static final enum CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field public static final enum KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

.field public static final enum PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v1, 0x0

    const-string v2, "ALL"

    const-string v3, "all"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 12
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v2, 0x1

    const-string v3, "CE"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 13
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v3, 0x2

    const-string v4, "KU"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 14
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v4, 0x3

    const-string v5, "PR"

    invoke-direct {v0, v5, v4, v5}, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    .line 10
    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->ALL:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/resources/DynamicResourceOrigin;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->value:Ljava/lang/String;

    return-object v0
.end method
