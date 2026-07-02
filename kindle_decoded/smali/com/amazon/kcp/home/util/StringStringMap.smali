.class final Lcom/amazon/kcp/home/util/StringStringMap;
.super Lcom/google/gson/reflect/TypeToken;
.source "HomeDatabaseUtils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/util/StringStringMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/amazon/kcp/home/util/StringStringMap;

    invoke-direct {v0}, Lcom/amazon/kcp/home/util/StringStringMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/util/StringStringMap;->INSTANCE:Lcom/amazon/kcp/home/util/StringStringMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
