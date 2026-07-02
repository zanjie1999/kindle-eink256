.class public final enum Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
.super Ljava/lang/Enum;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum LH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum PERCENT_OF_HEIGHT:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum PERCENT_OF_WIDTH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

.field public static final enum POINT:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 63
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v1, 0x0

    const-string v2, "PIXEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 67
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v2, 0x1

    const-string v3, "POINT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->POINT:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 71
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v3, 0x2

    const-string v4, "EM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 75
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v4, 0x3

    const-string v5, "LH"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->LH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 79
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v5, 0x4

    const-string v6, "PERCENT_OF_WIDTH"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PERCENT_OF_WIDTH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 83
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v6, 0x5

    const-string v7, "PERCENT_OF_HEIGHT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PERCENT_OF_HEIGHT:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    .line 59
    sget-object v8, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->POINT:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->EM:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->LH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PERCENT_OF_WIDTH:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
    .locals 1

    if-ltz p0, :cond_1

    .line 91
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->values()[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->values()[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 92
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->PIXEL:Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ViewSettings$PropertyUnit;

    return-object v0
.end method
