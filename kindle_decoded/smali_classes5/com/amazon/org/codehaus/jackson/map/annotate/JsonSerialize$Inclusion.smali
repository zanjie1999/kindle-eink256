.class public final enum Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum NON_DEFAULT:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum NON_EMPTY:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

.field public static final enum NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 152
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 158
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const/4 v2, 0x1

    const-string v3, "NON_NULL"

    invoke-direct {v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 168
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const/4 v3, 0x2

    const-string v4, "NON_DEFAULT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 190
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const/4 v4, 0x3

    const-string v5, "NON_EMPTY"

    invoke-direct {v0, v5, v4}, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_EMPTY:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    .line 146
    sget-object v6, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_DEFAULT:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .line 146
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-object p0
.end method

.method public static values()[Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .line 146
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->$VALUES:[Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0}, [Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    return-object v0
.end method
