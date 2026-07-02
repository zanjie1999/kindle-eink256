.class public final enum Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
.super Ljava/lang/Enum;
.source "SyncDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/sync/SyncDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeMembership"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

.field public static final enum AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

.field public static final enum BEFORE:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

.field public static final enum INVALID:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

.field public static final enum WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    const/4 v1, 0x0

    const-string v2, "BEFORE"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->BEFORE:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    const/4 v2, 0x1

    const-string v3, "WITHIN"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    const/4 v3, 0x2

    const-string v4, "AFTER"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    new-instance v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    const/4 v4, 0x3

    const-string v5, "INVALID"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->INVALID:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    .line 17
    sget-object v6, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->BEFORE:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->$VALUES:[Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->$VALUES:[Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    return-object v0
.end method
