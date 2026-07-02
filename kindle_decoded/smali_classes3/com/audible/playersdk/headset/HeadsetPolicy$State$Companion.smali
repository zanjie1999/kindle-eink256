.class public final Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;
.super Ljava/lang/Object;
.source "HeadsetPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/playersdk/headset/HeadsetPolicy$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(ILcom/audible/playersdk/headset/HeadsetPolicy$State;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;
    .locals 5

    const-string v0, "defaultState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->values()[Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 45
    invoke-virtual {v3}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
