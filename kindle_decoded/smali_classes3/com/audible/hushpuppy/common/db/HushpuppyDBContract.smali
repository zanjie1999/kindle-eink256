.class public final Lcom/audible/hushpuppy/common/db/HushpuppyDBContract;
.super Ljava/lang/Object;
.source "HushpuppyDBContract.java"


# static fields
.field public static final HUSHPUPPY_TABLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "name_values"

    const-string v1, "preferred_marketplace_endpoints"

    const-string v2, "preferred_marketplaces"

    const-string v3, "relationships"

    .line 203
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/db/HushpuppyDBContract;->HUSHPUPPY_TABLES:[Ljava/lang/String;

    return-void
.end method
