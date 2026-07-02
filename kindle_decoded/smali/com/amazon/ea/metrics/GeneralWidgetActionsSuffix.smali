.class public final enum Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;
.super Ljava/lang/Enum;
.source "GeneralWidgetActionsSuffix.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

.field public static final enum REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;


# instance fields
.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    const/4 v1, 0x0

    const-string v2, "REVIEW_PAGE"

    const-string v3, "ReviewPage"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    aput-object v0, v2, v1

    .line 3
    sput-object v2, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->$VALUES:[Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->$VALUES:[Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    return-object v0
.end method


# virtual methods
.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->suffix:Ljava/lang/String;

    return-object v0
.end method
