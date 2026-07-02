.class public final enum Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;
.super Ljava/lang/Enum;
.source "NameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

.field public static final enum ASHKENAZI:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

.field public static final enum GENERIC:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

.field public static final enum SEPHARDIC:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    const/4 v1, 0x0

    const-string v2, "ASHKENAZI"

    const-string v3, "ash"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    const/4 v2, 0x1

    const-string v3, "GENERIC"

    const-string v4, "gen"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    .line 37
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    const/4 v3, 0x2

    const-string v4, "SEPHARDIC"

    const-string v5, "sep"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    .line 28
    sget-object v5, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->$VALUES:[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->$VALUES:[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->name:Ljava/lang/String;

    return-object v0
.end method
