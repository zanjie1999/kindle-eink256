.class public final enum Lcom/amazon/krf/platform/SelectionState$LoupeStyle;
.super Ljava/lang/Enum;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/SelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoupeStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/SelectionState$LoupeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

.field public static final enum CIRCLE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

.field public static final enum NONE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

.field public static final enum SQUARE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    const/4 v2, 0x1

    const-string v3, "CIRCLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->CIRCLE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    const/4 v3, 0x2

    const-string v4, "SQUARE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->SQUARE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    .line 23
    sget-object v5, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->NONE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->CIRCLE:Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/SelectionState$LoupeStyle;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/SelectionState$LoupeStyle;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/SelectionState$LoupeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/SelectionState$LoupeStyle;

    return-object v0
.end method
