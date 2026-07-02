.class public final enum Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

.field public static final enum DYNAMIC:Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

.field public static final enum STATIC:Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 207
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    const/4 v1, 0x0

    const-string v2, "DYNAMIC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->DYNAMIC:Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    .line 213
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    const/4 v2, 0x1

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    .line 201
    sget-object v4, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->DYNAMIC:Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .line 201
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .line 201
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    return-object v0
.end method
