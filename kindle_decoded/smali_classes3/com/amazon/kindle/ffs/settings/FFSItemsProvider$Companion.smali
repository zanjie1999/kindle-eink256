.class public final Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;
.super Ljava/lang/Object;
.source "FFSItemsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastTimeIsOn()Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->access$getLastTimeIsOn$cp()Z

    move-result v0

    return v0
.end method

.method public final setLastTimeIsOn(Z)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/amazon/kindle/ffs/settings/FFSItemsProvider;->access$setLastTimeIsOn$cp(Z)V

    return-void
.end method
