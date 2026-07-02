.class final enum Lcom/amazon/readingactions/helpers/OrientationState;
.super Ljava/lang/Enum;
.source "OrientationEventListenerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/readingactions/helpers/OrientationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/readingactions/helpers/OrientationState;

.field public static final enum LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

.field public static final enum PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/amazon/readingactions/helpers/OrientationState;

    const/4 v1, 0x0

    const-string v2, "LANDSCAPE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/readingactions/helpers/OrientationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    new-instance v0, Lcom/amazon/readingactions/helpers/OrientationState;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/readingactions/helpers/OrientationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/readingactions/helpers/OrientationState;->PORTRAIT:Lcom/amazon/readingactions/helpers/OrientationState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/readingactions/helpers/OrientationState;

    .line 10
    sget-object v4, Lcom/amazon/readingactions/helpers/OrientationState;->LANDSCAPE:Lcom/amazon/readingactions/helpers/OrientationState;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/readingactions/helpers/OrientationState;->$VALUES:[Lcom/amazon/readingactions/helpers/OrientationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/readingactions/helpers/OrientationState;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/readingactions/helpers/OrientationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/readingactions/helpers/OrientationState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/readingactions/helpers/OrientationState;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/readingactions/helpers/OrientationState;->$VALUES:[Lcom/amazon/readingactions/helpers/OrientationState;

    invoke-virtual {v0}, [Lcom/amazon/readingactions/helpers/OrientationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/readingactions/helpers/OrientationState;

    return-object v0
.end method
