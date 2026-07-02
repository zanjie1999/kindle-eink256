.class public final enum Lcom/audible/hushpuppy/common/debug/DebugFeature;
.super Ljava/lang/Enum;
.source "DebugFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/debug/DebugFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/debug/DebugFeature;

.field public static final enum UPSELL_CANCEL_FLOW:Lcom/audible/hushpuppy/common/debug/DebugFeature;


# instance fields
.field private final debugTogglePreferenceKey:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

.field private final defaultEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/common/debug/DebugFeature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "UPSELL_CANCEL_FLOW"

    const-string v4, "UPSELL_CANCEL"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/audible/hushpuppy/common/debug/DebugFeature;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->UPSELL_CANCEL_FLOW:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    new-array v1, v1, [Lcom/audible/hushpuppy/common/debug/DebugFeature;

    aput-object v0, v1, v2

    .line 11
    sput-object v1, Lcom/audible/hushpuppy/common/debug/DebugFeature;->$VALUES:[Lcom/audible/hushpuppy/common/debug/DebugFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-boolean p3, p0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->defaultEnable:Z

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    invoke-direct {p1, p4}, Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->debugTogglePreferenceKey:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/debug/DebugFeature;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/debug/DebugFeature;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/debug/DebugFeature;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->$VALUES:[Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/debug/DebugFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/debug/DebugFeature;

    return-object v0
.end method


# virtual methods
.method public getDebugTogglePreferenceKey()Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->debugTogglePreferenceKey:Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    return-object v0
.end method

.method public isDefaultEnable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iget-boolean v0, p0, Lcom/audible/hushpuppy/common/debug/DebugFeature;->defaultEnable:Z

    return v0
.end method
