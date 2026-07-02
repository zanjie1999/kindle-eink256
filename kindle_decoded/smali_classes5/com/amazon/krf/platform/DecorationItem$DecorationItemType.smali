.class public final enum Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;
.super Ljava/lang/Enum;
.source "DecorationItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/DecorationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DecorationItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum GRAPHICAL_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum NOTE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum SQUIRCLE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum UNDEFINED:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum UNDERLINE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

.field public static final enum WORDWISE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 17
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->UNDEFINED:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 18
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v2, 0x1

    const-string v3, "HIGHLIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 19
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v3, 0x2

    const-string v4, "UNDERLINE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->UNDERLINE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 20
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v4, 0x3

    const-string v5, "GRAPHICAL_HIGHLIGHT"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 21
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v5, 0x4

    const-string v6, "SQUIRCLE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->SQUIRCLE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 22
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v6, 0x5

    const-string v7, "NOTE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->NOTE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 23
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v7, 0x6

    const-string v8, "POPULAR_HIGHLIGHT"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 24
    new-instance v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/4 v8, 0x7

    const-string v9, "WORDWISE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->WORDWISE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    .line 16
    sget-object v10, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->UNDEFINED:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->UNDERLINE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->SQUIRCLE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->NOTE:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->POPULAR_HIGHLIGHT:Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->$VALUES:[Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->$VALUES:[Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    return-object v0
.end method
