.class public final enum Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;
.super Ljava/lang/Enum;
.source "FragmentHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/common/FragmentHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnchorLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

.field public static final enum START_ACTIONS:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

.field public static final enum UPSELL_BOTTOM:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

.field public static final enum UPSELL_TOP:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    new-instance v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    const/4 v1, 0x0

    const-string v2, "UPSELL_TOP"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->UPSELL_TOP:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    const/4 v2, 0x1

    const-string v3, "UPSELL_BOTTOM"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->UPSELL_BOTTOM:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    const/4 v3, 0x2

    const-string v4, "START_ACTIONS"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->START_ACTIONS:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    .line 52
    sget-object v5, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->UPSELL_TOP:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->UPSELL_BOTTOM:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->$VALUES:[Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;
    .locals 1

    .line 52
    const-class v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;
    .locals 1

    .line 52
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->$VALUES:[Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    return-object v0
.end method
