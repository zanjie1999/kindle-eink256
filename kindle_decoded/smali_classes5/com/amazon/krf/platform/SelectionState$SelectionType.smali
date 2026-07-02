.class public final enum Lcom/amazon/krf/platform/SelectionState$SelectionType;
.super Ljava/lang/Enum;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/SelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/SelectionState$SelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum GRAPHICAL:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum HIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum IMAGE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum SQUIRCLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum TEXT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum UNDERLINE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionType;

.field public static final enum VIEWABLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v2, 0x1

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->TEXT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v3, 0x2

    const-string v4, "IMAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->IMAGE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v4, 0x3

    const-string v5, "GRAPHICAL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->GRAPHICAL:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v5, 0x4

    const-string v6, "VIEWABLE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->VIEWABLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v6, 0x5

    const-string v7, "HIGHLIGHT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->HIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v7, 0x6

    const-string v8, "UNDERLINE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->UNDERLINE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/4 v8, 0x7

    const-string v9, "SQUIRCLE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/krf/platform/SelectionState$SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->SQUIRCLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/krf/platform/SelectionState$SelectionType;

    .line 30
    sget-object v10, Lcom/amazon/krf/platform/SelectionState$SelectionType;->UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->TEXT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->IMAGE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->GRAPHICAL:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->VIEWABLE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->HIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionType;->UNDERLINE:Lcom/amazon/krf/platform/SelectionState$SelectionType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/krf/platform/SelectionState$SelectionType;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/SelectionState$SelectionType;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/SelectionState$SelectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/SelectionState$SelectionType;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionType;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/SelectionState$SelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/SelectionState$SelectionType;

    return-object v0
.end method
