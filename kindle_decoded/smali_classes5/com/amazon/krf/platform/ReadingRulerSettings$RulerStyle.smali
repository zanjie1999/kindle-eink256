.class public final enum Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;
.super Ljava/lang/Enum;
.source "ReadingRulerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ReadingRulerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RulerStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

.field public static final enum STYLE_BANDED:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

.field public static final enum STYLE_SOLID:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    const/4 v1, 0x0

    const-string v2, "STYLE_SOLID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_SOLID:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    new-instance v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    const/4 v2, 0x1

    const-string v3, "STYLE_BANDED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_BANDED:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    .line 5
    sget-object v4, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->STYLE_SOLID:Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->$VALUES:[Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;
    .locals 1

    .line 5
    const-class v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;
    .locals 1

    .line 5
    sget-object v0, Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->$VALUES:[Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ReadingRulerSettings$RulerStyle;

    return-object v0
.end method
