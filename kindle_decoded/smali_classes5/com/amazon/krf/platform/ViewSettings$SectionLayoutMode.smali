.class public final enum Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;
.super Ljava/lang/Enum;
.source "ViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/ViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SectionLayoutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

.field public static final enum NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

.field public static final enum SCALE_TO_FIT:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

.field public static final enum SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    .line 112
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    const/4 v2, 0x1

    const-string v3, "SCALE_TO_FIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    .line 118
    new-instance v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    const/4 v3, 0x2

    const-string v4, "SCALE_TO_WIDTH"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    .line 103
    sget-object v5, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->SCALE_TO_FIT:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;
    .locals 1

    if-ltz p0, :cond_1

    .line 121
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->values()[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {}, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->values()[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 122
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->NORMAL:Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;
    .locals 1

    .line 103
    const-class v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;
    .locals 1

    .line 103
    sget-object v0, Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->$VALUES:[Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/ViewSettings$SectionLayoutMode;

    return-object v0
.end method
