.class public final enum Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;
.super Ljava/lang/Enum;
.source "ContentAccessibilityVerbosity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

.field public static final enum LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

.field public static final enum TEXT_AND_ALT_TEXT:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

.field public static final enum TEXT_WITH_EXTRA_INFO:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    const/4 v1, 0x0

    const-string v2, "LEGACY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 19
    new-instance v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    const/4 v2, 0x1

    const-string v3, "TEXT_AND_ALT_TEXT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_AND_ALT_TEXT:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 24
    new-instance v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    const/4 v3, 0x2

    const-string v4, "TEXT_WITH_EXTRA_INFO"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_WITH_EXTRA_INFO:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 7
    sget-object v5, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_AND_ALT_TEXT:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->$VALUES:[Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->$VALUES:[Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    return-object v0
.end method
