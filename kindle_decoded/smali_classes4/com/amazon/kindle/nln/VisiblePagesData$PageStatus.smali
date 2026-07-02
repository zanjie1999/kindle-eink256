.class public final enum Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;
.super Ljava/lang/Enum;
.source "VisiblePagesData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/VisiblePagesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public static final enum OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public static final enum OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

.field public static final enum ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    const/4 v1, 0x0

    const-string v2, "OFFSCREEN_START"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 16
    new-instance v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    const/4 v2, 0x1

    const-string v3, "ONSCREEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 17
    new-instance v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    const/4 v3, 0x2

    const-string v4, "OFFSCREEN_END"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    .line 14
    sget-object v5, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->$VALUES:[Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->$VALUES:[Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-object v0
.end method
