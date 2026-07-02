.class public final enum Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;
.super Ljava/lang/Enum;
.source "StateChangeViewSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

.field public static final enum CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

.field public static final enum ERROR:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

.field public static final enum NONE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

.field public static final enum PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v1, 0x0

    const-string v2, "PURCHASE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->ERROR:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    .line 17
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v3, 0x2

    const-string v4, "CANCEL"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    .line 19
    new-instance v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->NONE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    .line 11
    sget-object v6, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->PURCHASE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->ERROR:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->$VALUES:[Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->$VALUES:[Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    return-object v0
.end method
