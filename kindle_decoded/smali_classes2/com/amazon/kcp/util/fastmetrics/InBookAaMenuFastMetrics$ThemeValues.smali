.class public final enum Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;
.super Ljava/lang/Enum;
.source "InBookAaMenuFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum COMPACT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum CUSTOM:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum LARGE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum LOW_VISION:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum STANDARD:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum USER_DEFINED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum USER_DEFINED_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum USER_DEFINED_EDIT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum USER_DEFINED_SAVED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

.field public static final enum USER_DEFINED_UNDO_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x0

    const-string v3, "LOW_VISION"

    const-string v4, "LowVision"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->LOW_VISION:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x1

    const-string v3, "LARGE"

    const-string v4, "Large"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->LARGE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x2

    const-string v3, "STANDARD"

    const-string v4, "Standard"

    .line 38
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->STANDARD:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x3

    const-string v3, "COMPACT"

    const-string v4, "Compact"

    .line 39
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->COMPACT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x4

    const-string v3, "CUSTOM"

    const-string v4, "Custom"

    .line 40
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->CUSTOM:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x5

    const-string v3, "USER_DEFINED"

    const-string v4, "UserDefined"

    .line 41
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x6

    const-string v3, "USER_DEFINED_DELETE"

    const-string v4, "UserDefinedDelete"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/4 v2, 0x7

    const-string v3, "USER_DEFINED_UNDO_DELETE"

    const-string v4, "UserDefinedUndoDelete"

    .line 45
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_UNDO_DELETE:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/16 v2, 0x8

    const-string v3, "USER_DEFINED_EDIT"

    const-string v4, "UserDefinedEdit"

    .line 46
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_EDIT:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    const/16 v2, 0x9

    const-string v3, "USER_DEFINED_SAVED"

    const-string v4, "UserDefinedSaved"

    .line 47
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->USER_DEFINED_SAVED:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$ThemeValues;->value:Ljava/lang/String;

    return-object v0
.end method
