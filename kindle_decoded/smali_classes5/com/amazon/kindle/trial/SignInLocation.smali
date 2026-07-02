.class public final enum Lcom/amazon/kindle/trial/SignInLocation;
.super Ljava/lang/Enum;
.source "TrialModeMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/trial/SignInLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/trial/SignInLocation;

.field public static final enum LIBRARY:Lcom/amazon/kindle/trial/SignInLocation;

.field public static final enum MORE_TAB:Lcom/amazon/kindle/trial/SignInLocation;

.field public static final enum SSO:Lcom/amazon/kindle/trial/SignInLocation;

.field public static final enum STORE:Lcom/amazon/kindle/trial/SignInLocation;


# instance fields
.field private final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kindle/trial/SignInLocation;

    new-instance v1, Lcom/amazon/kindle/trial/SignInLocation;

    const-string v2, "SSO"

    const/4 v3, 0x0

    .line 47
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kindle/trial/SignInLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/trial/SignInLocation;->SSO:Lcom/amazon/kindle/trial/SignInLocation;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/trial/SignInLocation;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    const-string v4, "Library"

    .line 52
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/trial/SignInLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/trial/SignInLocation;->LIBRARY:Lcom/amazon/kindle/trial/SignInLocation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/trial/SignInLocation;

    const/4 v2, 0x2

    const-string v3, "MORE_TAB"

    const-string v4, "MoreTab"

    .line 57
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/trial/SignInLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/trial/SignInLocation;->MORE_TAB:Lcom/amazon/kindle/trial/SignInLocation;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/trial/SignInLocation;

    const/4 v2, 0x3

    const-string v3, "STORE"

    const-string v4, "Store"

    .line 62
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/trial/SignInLocation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/trial/SignInLocation;->STORE:Lcom/amazon/kindle/trial/SignInLocation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/trial/SignInLocation;->$VALUES:[Lcom/amazon/kindle/trial/SignInLocation;

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

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/trial/SignInLocation;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/trial/SignInLocation;
    .locals 1

    const-class v0, Lcom/amazon/kindle/trial/SignInLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/trial/SignInLocation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/trial/SignInLocation;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/trial/SignInLocation;->$VALUES:[Lcom/amazon/kindle/trial/SignInLocation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/trial/SignInLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/trial/SignInLocation;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/trial/SignInLocation;->metricName:Ljava/lang/String;

    return-object v0
.end method
