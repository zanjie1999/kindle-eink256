.class public final enum Lcom/amazon/nwstd/resources/DynamicResourceValueType;
.super Ljava/lang/Enum;
.source "DynamicResourceValueType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/resources/DynamicResourceValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceValueType;

.field public static final enum FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

.field public static final enum ID:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

.field public static final enum TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

.field public static final enum UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/resources/DynamicResourceValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    .line 8
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v2, 0x1

    const-string v3, "FILE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/resources/DynamicResourceValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    .line 9
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v3, 0x2

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/resources/DynamicResourceValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    .line 10
    new-instance v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v4, 0x3

    const-string v5, "ID"

    invoke-direct {v0, v5, v4}, Lcom/amazon/nwstd/resources/DynamicResourceValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->ID:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    .line 6
    sget-object v6, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->UNKNOWN:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->FILE:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->TEXT:Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceValueType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceValueType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/resources/DynamicResourceValueType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceValueType;->$VALUES:[Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/resources/DynamicResourceValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/resources/DynamicResourceValueType;

    return-object v0
.end method
