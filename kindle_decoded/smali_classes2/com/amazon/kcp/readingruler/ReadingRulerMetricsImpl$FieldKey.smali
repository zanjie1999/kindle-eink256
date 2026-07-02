.class public final enum Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;
.super Ljava/lang/Enum;
.source "ReadingRulerMetricsImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

.field public static final enum IS_SNAPSHOT:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

.field public static final enum MODIFIER:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

.field public static final enum NEW_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

.field public static final enum PREV_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    const/4 v2, 0x0

    const-string v3, "PREV_VALUE"

    const-string v4, "prev_value"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->PREV_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    const/4 v2, 0x1

    const-string v3, "NEW_VALUE"

    const-string v4, "new_value"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->NEW_VALUE:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    const/4 v2, 0x2

    const-string v3, "MODIFIER"

    const-string v4, "modifier"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->MODIFIER:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    const/4 v2, 0x3

    const-string v3, "IS_SNAPSHOT"

    const-string v4, "is_snapshot"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->IS_SNAPSHOT:Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->$VALUES:[Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->$VALUES:[Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/readingruler/ReadingRulerMetricsImpl$FieldKey;->value:Ljava/lang/String;

    return-object v0
.end method
