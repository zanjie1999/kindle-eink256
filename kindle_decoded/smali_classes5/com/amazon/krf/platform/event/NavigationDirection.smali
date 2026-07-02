.class public final enum Lcom/amazon/krf/platform/event/NavigationDirection;
.super Ljava/lang/Enum;
.source "NavigationDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/event/NavigationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/event/NavigationDirection;

.field public static final enum Next:Lcom/amazon/krf/platform/event/NavigationDirection;

.field public static final enum None:Lcom/amazon/krf/platform/event/NavigationDirection;

.field public static final enum Previous:Lcom/amazon/krf/platform/event/NavigationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/amazon/krf/platform/event/NavigationDirection;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/event/NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    .line 16
    new-instance v0, Lcom/amazon/krf/platform/event/NavigationDirection;

    const/4 v2, 0x1

    const-string v3, "Previous"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/event/NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->Previous:Lcom/amazon/krf/platform/event/NavigationDirection;

    .line 21
    new-instance v0, Lcom/amazon/krf/platform/event/NavigationDirection;

    const/4 v3, 0x2

    const-string v4, "Next"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/event/NavigationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->Next:Lcom/amazon/krf/platform/event/NavigationDirection;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/event/NavigationDirection;

    .line 7
    sget-object v5, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/event/NavigationDirection;->Previous:Lcom/amazon/krf/platform/event/NavigationDirection;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/event/NavigationDirection;->$VALUES:[Lcom/amazon/krf/platform/event/NavigationDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/event/NavigationDirection;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/krf/platform/event/NavigationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/event/NavigationDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/event/NavigationDirection;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/krf/platform/event/NavigationDirection;->$VALUES:[Lcom/amazon/krf/platform/event/NavigationDirection;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/event/NavigationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/event/NavigationDirection;

    return-object v0
.end method
