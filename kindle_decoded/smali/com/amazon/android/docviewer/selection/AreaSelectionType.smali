.class public final enum Lcom/amazon/android/docviewer/selection/AreaSelectionType;
.super Ljava/lang/Enum;
.source "AreaSelectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/selection/AreaSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/selection/AreaSelectionType;

.field public static final enum ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

.field public static final enum HIGHLIGHT:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

.field public static final enum NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

.field public static final enum UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/android/docviewer/selection/AreaSelectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 10
    new-instance v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v2, 0x1

    const-string v3, "ACTIVE_AREA"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/android/docviewer/selection/AreaSelectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 11
    new-instance v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v3, 0x2

    const-string v4, "NOTE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/android/docviewer/selection/AreaSelectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 12
    new-instance v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "HIGHLIGHT"

    invoke-direct {v0, v6, v5, v4}, Lcom/amazon/android/docviewer/selection/AreaSelectionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->HIGHLIGHT:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    new-array v4, v4, [Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 8
    sget-object v6, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    aput-object v6, v4, v1

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    aput-object v1, v4, v2

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    aput-object v1, v4, v3

    aput-object v0, v4, v5

    sput-object v4, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->$VALUES:[Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->intValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/AreaSelectionType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/selection/AreaSelectionType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->$VALUES:[Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/selection/AreaSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    return-object v0
.end method
