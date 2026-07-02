.class public final enum Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;
.super Ljava/lang/Enum;
.source "PluginVisibilityLifeCycleEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PluginVisibilityLifeCycleEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

.field public static final enum PLUGIN_AVAILABLE:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

.field public static final enum PLUGIN_HIDDEN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

.field public static final enum PLUGIN_SHOWN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

.field public static final enum PLUGIN_UNAVAILABLE:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    const/4 v1, 0x0

    const-string v2, "PLUGIN_AVAILABLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_AVAILABLE:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    .line 21
    new-instance v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    const/4 v2, 0x1

    const-string v3, "PLUGIN_SHOWN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_SHOWN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    .line 22
    new-instance v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    const/4 v3, 0x2

    const-string v4, "PLUGIN_HIDDEN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_HIDDEN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    .line 23
    new-instance v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    const/4 v4, 0x3

    const-string v5, "PLUGIN_UNAVAILABLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_UNAVAILABLE:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    .line 18
    sget-object v6, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_AVAILABLE:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_SHOWN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->PLUGIN_HIDDEN:Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->$VALUES:[Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->$VALUES:[Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/PluginVisibilityLifeCycleEvent$PluginVisibilityLifeCycleEnum;

    return-object v0
.end method
