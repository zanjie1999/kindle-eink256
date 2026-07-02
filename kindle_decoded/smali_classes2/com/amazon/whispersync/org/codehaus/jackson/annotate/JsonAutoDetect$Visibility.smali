.class public final enum Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.super Ljava/lang/Enum;
.source "JsonAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum ANY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum NON_PRIVATE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum PROTECTED_AND_PUBLIC:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

.field public static final enum PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v1, 0x0

    const-string v2, "ANY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 55
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v2, 0x1

    const-string v3, "NON_PRIVATE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NON_PRIVATE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v3, 0x2

    const-string v4, "PROTECTED_AND_PUBLIC"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 66
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v4, 0x3

    const-string v5, "PUBLIC_ONLY"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 72
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 79
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v6, 0x5

    const-string v7, "DEFAULT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    .line 45
    sget-object v8, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->ANY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NON_PRIVATE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PROTECTED_AND_PUBLIC:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->PUBLIC_ONLY:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->$VALUES:[Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    return-object v0
.end method


# virtual methods
.method public isVisible(Ljava/lang/reflect/Member;)Z
    .locals 3

    .line 82
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$1;->$SwitchMap$org$codehaus$jackson$annotate$JsonAutoDetect$Visibility:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 95
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    return p1

    .line 88
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    return v1
.end method
