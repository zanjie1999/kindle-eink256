.class public abstract enum Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
.super Ljava/lang/Enum;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

.field public static final enum SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 236
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility$1;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    .line 249
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility$2;

    const/4 v2, 0x1

    const-string v3, "SAME_PACKAGE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    .line 230
    sget-object v4, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$1;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
    .locals 4

    .line 257
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 258
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    return-object p0

    .line 262
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 263
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 265
    :cond_1
    check-cast p0, Ljava/lang/reflect/Method;

    .line 266
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    if-ne v0, v1, :cond_2

    return-object v1

    .line 269
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 272
    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 273
    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    if-ne v2, v3, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    :cond_4
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    return-object p0
.end method

.method public static forType(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x5

    if-eqz p0, :cond_0

    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->SAME_PACKAGE:Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .line 230
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
    .locals 1

    .line 230
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->$VALUES:[Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;

    return-object v0
.end method


# virtual methods
.method public abstract and(Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;)Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen$Visibility;
.end method
