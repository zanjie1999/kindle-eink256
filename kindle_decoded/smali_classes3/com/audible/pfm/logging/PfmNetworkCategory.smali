.class public final enum Lcom/audible/pfm/logging/PfmNetworkCategory;
.super Ljava/lang/Enum;
.source "PfmNetworkCategory.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/logging/NetworkCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/pfm/logging/PfmNetworkCategory;",
        ">;",
        "Lcom/audible/hushpuppy/common/logging/NetworkCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/pfm/logging/PfmNetworkCategory;

.field public static final enum PFM:Lcom/audible/pfm/logging/PfmNetworkCategory;

.field public static final enum PFM_MODIFIED_SINCE:Lcom/audible/pfm/logging/PfmNetworkCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/audible/pfm/logging/PfmNetworkCategory;

    const/4 v1, 0x0

    const-string v2, "PFM"

    invoke-direct {v0, v2, v1}, Lcom/audible/pfm/logging/PfmNetworkCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/logging/PfmNetworkCategory;->PFM:Lcom/audible/pfm/logging/PfmNetworkCategory;

    .line 21
    new-instance v0, Lcom/audible/pfm/logging/PfmNetworkCategory;

    const/4 v2, 0x1

    const-string v3, "PFM_MODIFIED_SINCE"

    invoke-direct {v0, v3, v2}, Lcom/audible/pfm/logging/PfmNetworkCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/logging/PfmNetworkCategory;->PFM_MODIFIED_SINCE:Lcom/audible/pfm/logging/PfmNetworkCategory;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/pfm/logging/PfmNetworkCategory;

    .line 12
    sget-object v4, Lcom/audible/pfm/logging/PfmNetworkCategory;->PFM:Lcom/audible/pfm/logging/PfmNetworkCategory;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/pfm/logging/PfmNetworkCategory;->$VALUES:[Lcom/audible/pfm/logging/PfmNetworkCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/pfm/logging/PfmNetworkCategory;
    .locals 1

    .line 12
    const-class v0, Lcom/audible/pfm/logging/PfmNetworkCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/pfm/logging/PfmNetworkCategory;

    return-object p0
.end method

.method public static values()[Lcom/audible/pfm/logging/PfmNetworkCategory;
    .locals 1

    .line 12
    sget-object v0, Lcom/audible/pfm/logging/PfmNetworkCategory;->$VALUES:[Lcom/audible/pfm/logging/PfmNetworkCategory;

    invoke-virtual {v0}, [Lcom/audible/pfm/logging/PfmNetworkCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/pfm/logging/PfmNetworkCategory;

    return-object v0
.end method
